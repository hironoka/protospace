class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :title, :catch_copy, :concept, presence: true
end
