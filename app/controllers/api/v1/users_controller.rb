class Api::V1::UsersController < Api::V1::ApisController
skip_before_action :verify_authenticity_token
 
	def index

	end

	def create
		@user = UserClearance.user_from_params(user_params)
		@user_exists = User.find_by(email: @user.email)
		if @user_exists
			@user = UserClearance.authenticate(params)
			if @user != nil
			   render json: {result: true,object: @user}	
			else
			   render json: {result: false,message: 'Wrong email & password combination!'}
			end
		else
			if @user.save
				render json: {result: true,object: @user}
			else
				render_errors @user.errors.error_messages
			end
		end

	end

	private
	  def user_params
	  	params.require(:user).permit(:email,:password)
	  end


end