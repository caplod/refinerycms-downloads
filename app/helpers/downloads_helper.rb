module DownloadsHelper
  def fileicon(download)
    if Download::ICONS.include?(download.file.file_ext)
      refinery_icon_tag("#{download.file.file_ext}.png")
    else
      refinery_icon_tag('page_white_put.png')
    end
  end
  
  def filelink(download)
    "onclick=\"window.location.href='#{download.file.url}';\" ".html_safe
  end
end
