class Image < ActiveRecord::Base
  belongs_to :prototype

  mount_uploader :file, ImageUploader

  enum status: %i(main,sub)
  validates :file, :status, presence: true
end
