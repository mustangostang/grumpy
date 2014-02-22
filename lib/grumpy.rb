require "grumpy/version"

module Grumpy
  module Rails
    class Engine < ::Rails::Engine
      initializer :after_append_asset_paths, :group => :all, :after => :append_assets_path do |app|
        app.config.assets.paths << File.expand_path('../app/assets/stylesheets/grumpy.css.scss', __FILE__)
      end
    end
  end
end
