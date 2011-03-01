# Downloads engine for Refinery CMS.
## About

__Protected File Downloads.__

Key features:

* Upload your Files in the Backend
* Assign the Role 'Downloads' to Users
* Only these Users can access the Downloadpage

## Requirements

[RefineryCMS](http://refinerycms.com) version 0.9.8 or later.

### Gem Installation using Bundler (The very best way)

Include the latest [gem](http://rubygems.org/gems/refinerycms-news) into your Refinery CMS application's Gemfile:

    gem "refinerycms-downloads"

Then type the following at command line inside your Refinery CMS application's root directory:

    bundle install
    rails generate refinerycms_downloads
    rake db:migrate                     
    
Then add the following lines to your ApplicationController in order to redirect Users to the Downloadpage after logging in
    
    # redirect for private users
    def after_sign_in_path_for(resource)
      if resource.is_a?(User) && resource.has_role?(:downloads)
        downloads_url 
      else
        super
      end
    end
