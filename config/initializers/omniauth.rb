Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '130925530376635', '0ec2e7b251cb73fec7b0d4f4ac4bd391'
  provider :twitter, 'zSI4bMf4jvVk54BGwjVtwQ', 'oGnxjkPQjURugPwQp59gdnIuAPvD50E3b9nAystY'
end