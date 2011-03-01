module Admin
  class DownloadsController < Admin::BaseController

    crudify :download

    def index
      search_all_downloads if searching?
      paginate_all_downloads

      render :partial => 'downloads' if request.xhr?
    end

  end
end
