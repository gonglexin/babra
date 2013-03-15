class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :category

  validates :name,        presence: true
  validates :category,    presence: true
  validates :image,       presence: true
end
