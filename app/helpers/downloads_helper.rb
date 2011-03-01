module DownloadsHelper
  def fileicon(download)
    if Download::ICONS.include?(download.file.file_ext)
      image_tag("#{download.file.file_ext}.png")
    else 
      image_tag('page_white.png')
    end
  end
  
  def filelink(download)
    "onclick=\"window.location.href='#{download.file.url}';\" ".html_safe
  end
end
