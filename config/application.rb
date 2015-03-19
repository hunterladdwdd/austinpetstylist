require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Austinpetstylist
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true

    config.assets.enabled = true
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts', 'webfonts/2D42C1_0_0.eot', 'webfonts/2D42C1_0_0.woff2', 'webfonts/2D42C1_0_0.woff', 'webfonts/2D42C1_0_0.ttf')
    config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
    config.generators do |g|
      g.orm :active_record
      g.template_engine :haml
    end
  end
end
