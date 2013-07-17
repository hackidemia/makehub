Rails.application.config.middleware.use OmniAuth::Builder do
	config.omniauth :google_oauth2, "378442845121.apps.googleusercontent.com", "6IemnKWDSgvjKe_iMJqzMK4S", { access_type: "offline", approval_prompt: "" }
end