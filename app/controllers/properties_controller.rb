class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :check_if_manager, only: [:new, :create, :edit, :destroy, :update]
  
  #lists propertys that are currently available
  def index
    @properties = Property.all.paginate(page: params[:page], per_page: 5, order: 'date_available', conditions: {is_available: true}) 
  end

  #any manager may add a new property
  def new
    @property = Property.new
  end

  #only the owner of a property can edit it
  def edit
    if @property.user.id != @user.id
      redirect_to properties_path, notice:"Not authorized"
    end
  end

  def create
    @property = Property.new(property_params)
    @property.user_id = session[:user_id]

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  #only the owner of a property can edit it
  def update
    if @property.user.id != @user.id
      redirect_to properties_path, notice:"Not authorized"
    end
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  #only the owner can delete the property
  def destroy
    if @property.user.id != @user.id
      redirect_to properties_path, notice:"Not authorized"
    end
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:name, :description, :beds, :baths, :square_feet, :price, :address, :city, :state, :zip_code, :has_laundry, :has_parking, :image_url, :is_available, :date_available)
    end
end
