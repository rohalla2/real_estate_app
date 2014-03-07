class TenantOfsController < ApplicationController
  before_action :set_tenant_of, only: [:show, :edit, :update, :destroy]

  # GET /tenant_ofs
  def index
    @tenant_ofs = TenantOf.all
  end

  # GET /tenant_ofs/1
  def show
  end

  # GET /tenant_ofs/new
  def new
    @tenant_of = TenantOf.new
  end

  # GET /tenant_ofs/1/edit
  def edit
  end

  # POST /tenant_ofs
  def create
    @tenant_of = TenantOf.new(tenant_of_params)

    if @tenant_of.save
      redirect_to @tenant_of, notice: 'Tenant of was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /tenant_ofs/1
  def update
    if @tenant_of.update(tenant_of_params)
      redirect_to @tenant_of, notice: 'Tenant of was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /tenant_ofs/1
  def destroy
    @tenant_of.destroy
    redirect_to tenant_ofs_url, notice: 'Tenant of was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenant_of
      @tenant_of = TenantOf.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tenant_of_params
      params[:tenant_of]
    end
end
