class RegistrationsController < Devise::RegistrationsController
  respond_to :json 

  def create
    build_resource(sign_up_params)
    resource.save
    sign_up(resource_name, resource) if resource.persisted?

    if resource.persisted?
      token = JWT.encode({user_id: resource.id}, Rails.application.credentials.devise_jwt_secret_key)
      render json: { user: resource, token: token }
    else
      render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end

end