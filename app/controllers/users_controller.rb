class UsersController < ApplicationController
  before_action :authorize, except: [:new, :create]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # restricts access to index
  def index
    redirect_to user_path(@user)
  end

  # only allows a user to see his own profile page
  def show
    if @user.id != @user_local.id
      redirect_to user_path(@user), notice: "Not authorized"
    end
  end

  def new
    @user = User.new
  end

  # only allows a user to edit his own profile pages
  def edit
    if @user.id != @user_local.id
      redirect_to user_path(@user), notice: "Not authorized"
    end
  end

 
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end


  def update
    if @user.id != @user_local.id
      redirect_to user_path(@user), notice: "Not authorized"
    else
      respond_to do |format|
        if @user_local.update(user_params)
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
        else
          format.html { render action: 'edit' }
        end
      end
    end
  end

  def destroy
    @user_local.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user_local = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :password, :password_confirmation, :email, :address, :city, :state, :zip_code, :picture_url, :user_type, :phone_number, :website)
    end
end
