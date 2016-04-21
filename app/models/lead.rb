class Lead < ActiveRecord::Base
  # validates :email, uniqueness: true
  belongs_to :user
end
