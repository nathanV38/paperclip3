class GarmentImage < ActiveRecord::Base
  attr_accessible :caption, :garment_id, :photo
  
  belongs_to :garment
  has_attached_file :photo , :styles => { :small => '150x150>'}
  #validates_attachment_presence :photo
  #validates_attachment_size :photo, :less_than => 5.megabytes
end
