class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :images

  validates :catch_copy, :concept, presence: true
end
