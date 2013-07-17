Rails.application.config.middleware.use OmniAuth::Builder do
provider :google_oauth2, ENV["227438588534.apps.googleusercontent.com"] || '', ENV["GTJlU4O_r5PNHLU9ZSuGrMzh"] || ''
end