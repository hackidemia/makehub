Rails.application.config.middleware.use OmniAuth::Builder do
   provider :google_oauth2, ENV['110755067944.apps.googleusercontent.com'], ENV['HmfXCiMLcHA7bIDR0r2l7__S'], 
end