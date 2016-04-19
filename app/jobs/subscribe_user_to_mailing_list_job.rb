class SubscribeUserToMailingListJob 
  include SuckerPunch::Job
  
  def perform(user)
    ActiveRecord::Base.connection_pool.with_connection do
      # user = User.find(user)
      mailchimp_api_key = Rails.application.secrets.MAILCHIMP_API_KEY
      mailchimp_list_id = Rails.application.secrets.MAILCHIMP_LIST_ID
      email = user.email

      begin          
        gibbon = Gibbon::Request.new(api_key: mailchimp_api_key)
        gibbon.lists(mailchimp_list_id).members.create(body: {email_address: email, status: "subscribed"})

        # SubscribeMailer.confirmation_email(user).deliver
      rescue Gibbon::MailChimpError => mce
        SuckerPunch.logger.error("mailchimp failed: due to #{mce.message}")
        raise mce
      rescue Exception => e
        SuckerPunch.logger.error("subscribe failed: due to #{e.message}")
        raise e
      end      
    end
  end
end
