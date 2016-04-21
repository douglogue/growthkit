class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :landings
  has_many :promo_bars
  has_many :leads

  after_create :subscribe_user_to_mailing_list

  private

  def subscribe_user_to_mailing_list
    SubscribeUserToMailingListJob.perform_async(self)
  end
end
