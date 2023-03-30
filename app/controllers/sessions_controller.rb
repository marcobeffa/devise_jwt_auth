class SessionsController < Devise::SessionsController
  respond_to :json 
  def create
    resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)

    token = JWT.encode({user_id: resource.id}, Rails.application.credentials.devise_jwt_secret_key)
    render json: { user: resource, token: token }
  end
end