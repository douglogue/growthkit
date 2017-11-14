class Landing < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user
  has_many :leads
  attachment :hero_image
  attachment :logo
end
