class Emailer < ActionMailer::Base
  def memberapp_email(app)
    #Setting the content of the email
    recipients  "smathew@shareone.com"
	from        "web_services@shareone.com"
	subject     "BAY RIDGE FCU --- MEMBERSHIP APPLICATION"
	
	body :app => app
  end
  
  def loanapp_email(app)
	recipients  "smathew@shareone.com"
	from        "web_services@shareone.com"
	subject     "BAY RIDGE FCU --- LOAN APPLICATION"
	
	body :app => app
  end
end
