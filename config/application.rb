require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "yaml"
require "dotenv"

Dotenv.load

# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module Backend
  class Application < Rails::Application

    #configuring the test suite
    config.generators do |g|
        g.test_framework :rspec, fixture: true
        g.fixture_replacement :factory_girl, dir: 'spec/factories'
        g.view_specs false
        g.helper_specs false
        g.stylesheets = false
        g.javascripts = false
        g.helpfer = false
    end


    config.active_record.raise_in_transactional_callbacks = true

    #config.middleware.use Rack::Cors do
    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        # WARNING: Allow ALL cross site scripting from ALL domains
        origins '*'
        # WARNING: Allow ALL HTTP method
        resource '*', :headers => :any, :methods => [:get, :patch, :put, :post,:delete, :options]
      end
    end
  end
end

