class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :check_if_manager, only: [:new, :create, :edit, :destroy, :update]


  #Restrict only allowing Manager's can create new properties
  def check_if_manager
     @user = User.find_by(id: session[:user_id] )
    if @user.user_type != "Manager"
      redirect_to properties_path, notice: "Only Managers are authorized to perform this function" 
    end
  end



  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all    

    @user = User.find_by(id: session[:user_id] )

  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    property_id = params[:id]
    @property = Property.find_by(id: property_id)
    @manager_id = @property.user_id
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)
    @property.user_id = session[:user_id]

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render action: 'show', status: :created, location: @property }
      else
        format.html { render action: 'new' }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:name, :description, :beds, :baths, :square_feet, :price, :address, :city, :state, :zip_code, :has_laundry, :has_parking, :image_url)
    end
end
