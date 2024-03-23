class AdminMailer < ApplicationMailer
    def new_client_notification(client)
        @client = client
        admins = Admin.pluck(:email) # Assuming you have a list of admin email addresses
        mail(to: admins, subject: 'New Client Sign-Up Notification')
      end
end
