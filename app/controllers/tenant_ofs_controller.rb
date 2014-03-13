class TenantOfsController < ApplicationController
  before_action :authorize
  before_action :check_if_manager
  before_action :set_tenant_of, only: [:show, :edit, :update, :destroy]
  before_action :set_property
  

  # Only allows access to /tenant_ofs if there is a QSP of ?propertyID=# attached
  # and if the current user is authorized to see the property's info
  def index
    if @property.nil? || @property.user.id != @user.id
      redirect_to properties_path, notice: "Not Authorized"      
    end
  end

   # Only show if @user is the manager of the property for /tenant_ofs/#
  def show
    if @user.id != @tenant_of.user.id && @user.id != @tenant_of.property.user.id
      redirect_to properties_path, notice: "Not Authorized"
    end
  end

  # only allows managers to attempt to add tenants to their
  # own properties
  def new
    if @property.user.id != @user.id
      redirect_to properties_path, notice: "Not Authorized"
    end

    @tenant_of = TenantOf.new
    
  end

  # Only allows managers to create tenants for their own properties
  def create
    if @property.user.id != @user.id
      redirect_to properties_path, notice: "Not Authorized"
    else
      @tenant_of = TenantOf.new
      email = params["email"].downcase
      user = User.find_by(email: email)
      
      if user.nil?
        @tenant_of.errors.add(:email, " value #{email} does not correspond to any user")
      else
        @tenant_of.user_id = user.id
        @tenant_of.property_id = @property.id
      end
      
      if @tenant_of.errors.count == 0 && @tenant_of.save
        redirect_to property_path(@property), notice: 'Tenant of was successfully created.'
      else
        render action: 'new'
      end 
    end
  end

  # Only allows managers to delete their own tenants
  def destroy
    if @tenant_of.property.user.id != @user.id
      redirect_to properties_path, notice: "Not Authorized"
    else
      @tenant_of.destroy
      redirect_to :back, notice: 'Tenant was removed.'  
    end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenant_of
      @tenant_of = TenantOf.find_by(id: params[:id])
      @tenant = @tenant_of.user
    end

    # Only allow a trusted parameter "white list" through.
    def tenant_of_params
      params.require[:tenant_of].permit(:User_id, :propertyID)
    end

    def set_property
      id = params["propertyID"]
      @property = Property.find_by(id: id )
    end
end
