class UserMailer < ActionMailer::Base
   default from: "srikanth@masymbol.com"

 def user_mail(user)
  	@user = user
  	mail(:to => "srikanth@masymbol.com", :subject => @user.email)
  end
end
