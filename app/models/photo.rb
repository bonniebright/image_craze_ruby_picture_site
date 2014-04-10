class Photo < ActiveRecord::Base
  # attr_accessor :image_file_name, :image_content_type, :image_file_size, :image_updated_at

  belongs_to :user

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
