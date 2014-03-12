class TenantOfsController < ApplicationController
  before_action :set_tenant_of, only: [:show, :edit, :update, :destroy]
  before_action :set_property
  before_action :check_if_manager

  # GET /tenant_ofs
  def index
  end


   # GET /tenant_ofs/1
  def show
  end


  # GET /tenant_ofs/new
  def new
    @tenant_of = TenantOf.new
    @property_id = params["propertyID"]
  end

  # POST /tenant_ofs
  def create
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

  # DELETE /tenant_ofs/1
  def destroy
    @tenant_of.destroy
    redirect_to :back, notice: 'Tenant was removed.'
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
