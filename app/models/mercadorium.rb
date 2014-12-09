class Mercadorium < ActiveRecord::Base
 belongs_to :fabrica


  belongs_to :gallery
  mount_uploader :image, ImageUploader
 
end

