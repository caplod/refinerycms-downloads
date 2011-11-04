class DownloadFile < ActiveRecord::Base

  acts_as_indexed :fields => [:title]

  validates :title, :presence => true, :uniqueness => true
  
  belongs_to :file, :class_name => 'Resource'
  belongs_to :download_category  
  
  ICONS = [ 'pdf', 'doc' , 'ppt' ]      
   
end
