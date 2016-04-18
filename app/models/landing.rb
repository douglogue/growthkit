class Landing < ActiveRecord::Base
  belongs_to :user
  attachment :hero_image
end
