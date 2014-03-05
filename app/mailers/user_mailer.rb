class UserMailer < ActionMailer::Base
  layout "mailer"
  default from: "no-reply@facespace.com"


  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to the Space of Faces")
  end

  def marketing(user)
    @user = user
    mail(to: @user.email, subject: "Check out our new deals of the month!")
  end

  def newssignup(user)
    @user = user
    mail(to: @user[:email], subject: "You're now In The Know")
  end

  def update_info(user)
    @user = user
    mail(to: @user.email, subject: "Are you alive")
  end


end
