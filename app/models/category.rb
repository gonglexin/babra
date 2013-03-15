class Category < ActiveRecord::Base
  has_many :products, dependent: :destroy
  has_ancestry

  validates :name, presence: true, uniqueness: true
end
