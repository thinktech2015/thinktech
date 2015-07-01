class SearchMailer < ActionMailer::Base
	
  default from: "ashish@thethinktech.com"

  def welcome_email(search)
    @search = search
    mail(to: @search.email, subject: 'Welcome to Think Tech')
  end

   def query_mail(search)
  	@search=search
    mail(:to => "ashish@thethinktech.com", :subject => "Getting Quote")
   end
end
