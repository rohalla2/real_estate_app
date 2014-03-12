class MessagesController < ApplicationController
  before_action :authorize
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  
  #only allows a user to view a message that has been sent to them
  #or sent by them
  def show
    if @message.user.id != @user.id && @user.messages_received.find_by(id: @message.id).nil?
      redirect_to messages_url, notice: "Not Authorized."
    end 
  end

  def new
    @message = Message.new
  end

  # does not allow a message to be edited
  def edit
    redirect_to message_url(@message), notice: "You cannot edit a message after it is sent."
  end

  #creates a new message
  def create
    @message = Message.new(message_params)
    @message.user_id = @user.id  

    #try to find users in :to param
    to_users_emails = params[:to].split(" ")
    
    if to_users_emails.size == 0
      @message.errors.add(:to, "field cannot be empty")
    else
      validate_email_addresses(to_users_emails)
    end


    respond_to do |format|
      if @message.errors.count == 0 && @message.save
        send_message_to_recipients(to_users_emails, @message.id)
        format.html { redirect_to @message, notice: 'Message was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    redirect_to messages_url, notice: "You cannot edit a message after it is sent."
  end

  #messages cannot be deleted
  def destroy
    redirect_to messages_url, notice: "You cannot delete this message."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:title, :message, :message_type)
    end

    def validate_email_addresses(email_addresses)
      email_addresses.each do |email|
        email.downcase!
        temp = nil
        temp = User.find_by(email: email)
        if temp.nil?
          @message.errors.add(:to, " value #{email} does not correspond to any user")
        end
      end

    end

    def send_message_to_recipients (emails, message_id)
      emails.each do |email|
        email.downcase!
        rec = Recipient.new
        rec.user_id = User.find_by(email: email).id
        rec.message_id = message_id
        rec.save
      end
    end

end
