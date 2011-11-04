require 'refinery'

module Refinery
  module Downloads
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "downloads"
          plugin.url = {:controller => '/admin/download/files', :action => 'index'}
          plugin.menu_match = /^\/?(admin|refinery)\/download\/?(files|categories)?/
          plugin.activity = {
            :class => DownloadFile
          }
        end
        
      end
    end
  end
end
