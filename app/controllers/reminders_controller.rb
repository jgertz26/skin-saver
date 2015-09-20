class RemindersController < ApplicationController


  def create
    @user = current_user
    @reminder = Reminder.new
    @reminder.user = @user

    if @reminder.save
      flash[:notice] = "You're good to glow!"
      redirect_to "/"
    else
      flash[:error] = "Oops! Try again!"
      redirect_to "/"
    end
  end
end
