class Reminder < ActiveRecord::Base
  belongs_to :user


  after_create :remind

  def remind
      @twilio_number = ''
      @client = Twilio::REST::Client.new '', ''
      reminder = "You need to reapply sunscreen!"
      message = @client.account.messages.create(
        :from => @twilio_number,
        :to => self.user.phone,
        :body => reminder,
      )
      puts message.to
  end


  handle_asynchronously :remind, :run_at => Proc.new { 1.minutes.from_now }

end
