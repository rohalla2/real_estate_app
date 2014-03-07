class TenantOfsController < ApplicationController
  before_action :set_tenant_of, only: [:show, :edit, :update, :destroy]
  before_action :set_propertyID

  # GET /tenant_ofs
  def index
    @tenant_ofs = TenantOf.all
    @property = params["propertyID"]
  end


   # GET /tenant_ofs/1
  def show
    tenant_id = TenantOf.find_by(id: params[:id])   
    @tenant = User.find_by(id: tenant_id.User_id) #identifies who the user is for the show page
    @property = params["propertyID"]
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
    @property_id = params["property_id"]
    user = User.find_by(email: email)
    @tenant_of.User_id = user.id
    @tenant_of.Property_id = @property_id

    if @tenant_of.save
      redirect_to property_path(@property_id), notice: 'Tenant of was successfully created.'
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
      @tenant_of = TenantOf.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tenant_of_params
      params.require[:tenant_of].permit(:User_id, :propertyID)
    end

    def set_propertyID
      @property_id = params["property_id"]
    end
end
