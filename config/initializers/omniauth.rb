OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, app_id, secret, :scope => 'email', :display => 'popup'
end