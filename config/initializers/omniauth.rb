Rails.application.config.middleware.use OmniAuth::Builder do
provider :google_oauth2, ENV["378442845121.apps.googleusercontent.com"] || '', ENV["6IemnKWDSgvjKe_iMJqzMK4S"] || ''
end