class Devise::Users::SessionsController < Devise::SessionsController
  def new
    self.resource = resource_class.new(sign_in_params)
    clean_up_passwords(resource)

    if Rails.env.development? and User.admin.exists?
      default_user = User.admin.last
      resource.email = default_user.email
      resource.password = '111222333'
    end

    respond_with(resource, serialize_options(resource))
  end

end


