class PaymentsController < ApplicationController
  before_action :authorize
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  def index
    sent = @user.payments
    received = @user.properties.flat_map(&:payments)
    temp = sent + received
    @payments = temp.sort_by(&:created_at)
  end

  #only shows payment if it is to or from @user
  def show
    if @user.id != @payment.user.id && @user.id != @payment.property.user.id
      redirect_to payments_path, notice: "Not authorized."
    end
  end

  #only allows access to new page if there is a propertyID in the params hash
  def new
    @property_id = params["propertyID"]
    if @property_id.nil?
      redirect_to user_path(@user), notice: "You must submit payments from the link on the property page."
    end
    @payment = Payment.new
  end

  #Does not allow editing of payments
  def edit
    redirect_to payment_path(@payment), notice: "You cannot edit this payment."
  end

  def create
    @payment = Payment.new(payment_params)
    property_id = params["property_id"]
    @payment.user_id = @user.id
    @payment.property_id = property_id


    respond_to do |format|
      if @payment.save
        format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  #does not allow updating of payments
  def update
    redirect_to payment_path(@payment), notice: "You cannot edit this payment."
  end

  #does not allow deletion of payments
  def destroy
      redirect_to payment_path(@payment), notice: "You cannot delete this payment."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:user_id, :property_id, :amount, :bank_routing_number, :bank_account_number, :account_type)
    end
end
