class Painting < ActiveRecord::Base
  attr_accessible :name, :image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  before_create :default_name

  def default_name
    self.name ||= File.basename(image_file_name, '.*').titleize if image.file?
  end
end
