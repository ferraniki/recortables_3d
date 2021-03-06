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

require File.dirname(__FILE__) + '/../spec_helper'

describe Imagen do
  it "should be valid" do
    Imagen.new.should be_valid
  end
end
