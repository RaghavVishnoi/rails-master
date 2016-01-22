class UserClearance
 
	 def self.authenticate(params)
	    Clearance.configuration.user_model.authenticate(params[:user][:email],params[:user][:password])
	 end

	 def self.user_from_params(user_params)
	    email = user_params.delete(:email)
	    password = user_params.delete(:password)

	    Clearance.configuration.user_model.new(user_params).tap do |user|
	      user.email = email
	      user.password = password
	    end
	  end
end