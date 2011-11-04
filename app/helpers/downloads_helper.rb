module DownloadsHelper
  def fileicon(download)
    if download.file.file_ext.present?
      refinery_icon_tag("#{download.file.file_ext}.png")
    else
      refinery_icon_tag('page_white_put.png')
    end     
  end
  
  def filelink(download)
    "onclick=\"window.location.href='#{download.file.url}';\" ".html_safe unless download.file.blank?
  end
end
