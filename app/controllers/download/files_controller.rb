class Download::FilesController < ApplicationController
  helper :downloads
  before_filter :find_all_categories
  before_filter :find_page
  before_filter :authorize_as_private_user
  
  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @download in the line below:
    present(@page)
  end

protected

  def find_all_categories
    @categories = DownloadCategory.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/download")
  end
  
  def authorize_as_private_user 
    if current_user 
     redirect_to root_url unless current_user.has_role?(:downloads) || current_user.has_role?(:superuser)
    elsif !current_user
     redirect_to new_user_session_path
    end
  end

end
