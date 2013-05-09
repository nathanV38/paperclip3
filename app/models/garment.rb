class Garment < ActiveRecord::Base
  attr_accessible :brand, :price, :size_id, :garment_images_attributes, :user_id
  
  belongs_to :size
  belongs_to :user
  
  has_many :garment_images, :dependent => :destroy
  
  accepts_nested_attributes_for :garment_images#, :reject_if => lambda { |t| t['garment_images'].nil? }
end
