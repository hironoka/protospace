class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true, reject_if: :reject_image

  validates :title,
            :catch_copy,
            :concept,presence: true

  def reject_image(attributed)
    attributed['file'].blank?
  end

end
