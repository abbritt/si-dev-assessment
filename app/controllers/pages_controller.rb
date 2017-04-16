

class PagesController < ApplicationController
  

  
  
def sms

require 'twilio-ruby'

account_sid = "ACc51860595862b1caf9a3faef5f7e05bf" # Your Account SID from www.twilio.com/console
auth_token = "612242f1dafa89bc16f0e27c85f817c9"   # Your Auth Token from www.twilio.com/console

    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(:body => params[:message],
        :to => params[:user][:phone],    # Replace with your phone number
        :from => "7347893107")  # Replace with your Twilio number
        
puts message.sid
end
end

