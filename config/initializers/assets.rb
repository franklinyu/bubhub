# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( navbar.css )
<<<<<<< HEAD
Rails.application.config.assets.precompile += %w( sign_in.css)
=======
Rails.application.config.assets.precompile += %w( accounts.css )
>>>>>>> 81766e5520bed0b1bcae9a935c24f3c324d96a10

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
