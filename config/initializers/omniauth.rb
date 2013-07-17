Rails.application.config.middleware.use OmniAuth::Builder do
	provider :google_oauth2, "378442845121.apps.googleusercontent.com", "6IemnKWDSgvjKe_iMJqzMK4S"
end