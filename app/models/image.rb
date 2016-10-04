class Image < ActiveRecord::Base
  belongs_to :prototype

  mount_uploader :file, ImageUploader

  enum status: { main: 0, sub: 1 }
  validates :file, :status, presence: true
end
