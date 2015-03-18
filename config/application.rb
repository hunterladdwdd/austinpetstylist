require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Austinpetstylist
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true

    config.assets.enabled = true
    config.generators do |g|
      g.orm :active_record
      g.template_engine :haml
    end

    # Add the fonts path
    config.assets.paths << Rails.root.join('app', 'assets', 'webfonts')

    # Precompile additional assets
    config.assets.precompile += %w( .svg .eot .woff .ttf )
  end
end
