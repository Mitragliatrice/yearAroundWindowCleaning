module SmsTool
  account_sid = ENV['TWILIO_ACCOUNT_SID']
  auth_token = ENV['TWILIO_AUTH_TOKEN']

  @client = Twilio::REST::Client.new account_sid, auth_token

  def self.send_sms(name:, phone:, email:, city:, comments:)
    @client.messages.create(
      from: ENV['TWILIO_NUMBER'],
      to: "+18016027706",
      body: "Adam!\n #{name.titleize} from #{city.titleize} that would like a quote.\n Their phone number is: #{phone}.\n Other comments: \n#{comments}."
    )
  end
end