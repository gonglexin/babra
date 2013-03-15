class Topic < ActiveRecord::Base
  validates :title, presence: true
  validates :body,  presence: true
end
