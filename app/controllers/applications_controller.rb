class ApplicationsController < ApplicationController
  before_action :authorize  #must be logged in to view any pages
  before_action :set_application, only: [:show, :edit, :update, :destroy]

  #index.html.erb shows all applications sent or received by @user
  def index
    applied_to = @user.applications
    applications_received = @user.properties.flat_map(&:applications)
    temp = applied_to + applications_received
    @applications = temp.sort_by(&:created_at)
  end

  #only shows the application page if @user is the applicant or property manager
  def show
    if @user.id != @application.user.id && @user.id != @application.property.user.id
      redirect_to applications_path, notice: "Not authorized."
    end
  end

  def new
    @property_id = params["propertyID"]
    @application = Application.new
  end

  #only allows an application to be edited by the applicant
  def edit
    if @user.id != @application.user.id
      redirect_to application_path(@application), notice: "Only the applicant can edit their application."
    end
  end

  def create
    @application = Application.new(application_params)
    property_id = params["property_id"]
    @application.user_id = @user.id
    @application.property_id = property_id

    respond_to do |format|
      if @application.save
        format.html { redirect_to @application, notice: 'Application was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  #Only allows the applicant to update application
  def update
    if @user.id != @application.user.id 
      redirect_to applications_path, notice: "Not authorized!"
    end

    respond_to do |format|
      if @application.update(application_params)
        format.html { redirect_to @application, notice: 'Application was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  #only allows the applicant to delete their application
  def destroy
    if @user.id != @application.user.id 
      redirect_to applications_path, notice: "Not authorized!"
    end
    @application.destroy
    respond_to do |format|
      format.html { redirect_to applications_url, notice: "Application deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:User_id, :Property_id, :price_offer, :conditions)
    end
end
