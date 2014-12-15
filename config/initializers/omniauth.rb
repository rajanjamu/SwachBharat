OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '873875205977099', '01ef8db432069f7da528adf459dcca02', :scope => 'email', :display => 'popup'
end