class UserMailer < ActionMailer::Base
  
  default from: "priyanko.dey33@gmail.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Think Tech')
  end

   def query_mail(user)
  	@user=user
    mail(:to => "priyanko.dey33@gmail.com", :subject => "Getting Quote")
   end

end
