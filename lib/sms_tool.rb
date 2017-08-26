module SmsTool
  account_sid = ENV['TWILIO_ACCOUNT_SID']
  auth_token = ENV['TWILIO_AUTH_TOKEN']

  @client = Twilio::REST::Client.new account_sid, auth_token

  def self.send_sms(name:, phoneto:, clientphone:, email:, city:, comments:)
    @client.messages.create(
      from: ENV['TWILIO_NUMBER'],
      to: "+1#{phoneto}",
      body: "Adam!\n #{name.titleize} from #{city.titleize} that would like a quote.\n Their phone number is: #{clientphone}.\n Other comments: \n#{comments}."
    )
  end
end