class Prototype < ActiveRecord::Base

  belongs_to :user
  has_many :images, dependent: :destroy
  has_one :main_image, -> { where(status: 0) }, class_name: "Image"
  has_many :sub_image, -> { where(status: 1).limit(3) }, class_name: "Image"
  accepts_nested_attributes_for :images, allow_destroy: true, reject_if: :reject_image
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :prototypes

  paginates_per 8

  validates :title,
            :catch_copy,
            :concept,presence: true

  def reject_image(attributed)
    attributed['file'].blank?
  end

  MAXIMUM_SUB_IMAGES_NUM = 3
  def sub_image
    sub_images = images.sub
    MAXIMUM_SUB_IMAGES_NUM.times { |i| sub_images[i] ||= images.build(status: "sub") }
    sub_images
  end

  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

end
