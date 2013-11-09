class User < ActiveRecord::Base


self.inheritance_column = nil

  encrypted_id key: '1vA3tza3g5GOg7EOE7ubEL'

  has_attached_file :avatar, :styles => { :medium => "150x150#", 
  	:thumb => "100x100#" }, :default_url => "/images/:style/no-avatar.png"
  validates_attachment_presence :avatar, :message => "You need to upload a photo"

end
