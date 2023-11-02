require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module HotelChoice
  class Application < Rails::Application

    config.load_defaults 7.0
    
    config.generators do |g|
      g.skip_routes true
      g.assets false
      g.helper false
      g.test_framework false
    end
  end
end
