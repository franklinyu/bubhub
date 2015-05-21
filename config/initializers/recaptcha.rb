Recaptcha.configure do |config|
  config.public_key = ENV['RECAPTCHA_PUBLIC_KEY']
  config.private_key = ENV['RECAPTCHA_PRIVATE_KEY']  
  config.api_version = 'v2'
#config.proxy = 'http://www.google.com/recaptcha/api/verify'
end
