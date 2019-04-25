require_relative 'boot'
require 'rails/all'
require 'rack/cors'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EdenFalls
  class Application < Rails::Application
    # Use the responders controller from the responders gem
    config.app_generators.scaffold_controller :responders_controller

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Configure rack-cors for application
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'locahost:4200', 'localhost:5000', 'localhost: 8000'
        resource '*', headers: :any, methods: [:get, :post, :options]
      end
    end

    # Settings in config/envirronments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
