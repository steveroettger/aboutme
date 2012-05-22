Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :twitter, 'zSI4bMf4jvVk54BGwjVtwQ', 'oGnxjkPQjURugPwQp59gdnIuAPvD50E3b9nAystY'
end