OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '873757925988827', '06f834d2aae8c4dcc0b721bd793a3788', :scope => 'email', :display => 'popup'
end