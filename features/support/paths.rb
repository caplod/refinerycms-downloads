module NavigationHelpers
  module Refinery
    module Downloads
      def path_to(page_name)
        case page_name
        when /the list of downloads/
          admin_downloads_path

         when /the new download form/
          new_admin_download_path
        else
          nil
        end
      end
    end
  end
end
