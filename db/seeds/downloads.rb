User.find(:all).each do |user|
  if user.plugins.find_by_name('downloads').nil?
    user.plugins.create(:name => 'downloads',
                        :position => (user.plugins.maximum(:position) || -1) +1)
  end
end

page = Page.create(
  :title => 'Download',
  :link_url => '/download',
  :deletable => false,
  :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
  :menu_match => '^/download(\/|\/.+?|)$'
)
Page.default_parts.each do |default_page_part|
  page.parts.create(:title => default_page_part, :body => nil)
end

Role.create(:title => 'Downloads')
