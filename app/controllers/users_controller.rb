class UsersController < ApplicationController
  def index
     @users = User.all
  end

  def show
     @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
	@user.update(user_params)
	#	render :index
	#else
	#	render :edit
	#end  	
  end

  def create
  	@user = User.new(user_params)
  	if @article.save 
  		redirect_to @article
  	else
  		render :new
  	end
  end
  
  def destroy
     @user = User.find(params[:id])
     @user.destroy
     
  end

  private

  def user_params
  	params.require(:user).permit(:email,:first_name,:last_name,:phone_number,
  								:birth_date,:password, :password_confirmation, :rol_id,:department_id )
  end

end
