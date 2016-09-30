class Image < ActiveRecord::Base
  belongs_to :prototype

  mount_uploader :file, ImageUploader

  validates :file, presence: true
end
