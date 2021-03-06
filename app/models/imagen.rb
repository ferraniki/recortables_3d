# == Schema Information
#
# Table name: imagenes
#
#  id                  :integer(4)      not null, primary key
#  nombre              :string(255)
#  recortable_id       :integer(4)
#  created_at          :datetime
#  updated_at          :datetime
#  imagen_file_name    :string(255)
#  imagen_content_type :string(255)
#  imagen_file_size    :integer(4)
#  imagen_updated_at   :datetime
#

class Imagen < ActiveRecord::Base
  
  attr_accessible :nombre
  belongs_to :recortable
  has_attached_file :imagen#, :styles => {}, :processors => [:ppm_to_jpg]



end
