class DownloadCategory < ActiveRecord::Base 
  acts_as_indexed :fields => [:title]

  validates :title, :presence => true, :uniqueness => true
  
  has_many :download_files
end