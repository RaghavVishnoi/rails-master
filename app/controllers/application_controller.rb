class ApplicationController < ActionController::Base
 include Clearance::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :exception

private  
  def render_errors(errors)
    render json: { errors: errors }, status: 422
  end
  
  def record_not_found
    render :json => {:result => 'record not found'} # Assuming you have a template named 'record_not_found'
  end

  def token
    authenticate_or_request_with_http_token do |token, options|
      token
    end  
  end

end
