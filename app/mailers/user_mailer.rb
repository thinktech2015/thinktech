class UserMailer < ActionMailer::Base
  
  default from: "ashish@thethinktech.com"

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Think Tech')
  end

   def query_mail(user)
  	@user=user
    mail(:to => "ashish@thethinktech.com", :subject => "Getting Quote")
   end

end
