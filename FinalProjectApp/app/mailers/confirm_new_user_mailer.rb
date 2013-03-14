class ConfirmNewUserMailer < ActionMailer::Base
  default :from => "csppbloggeremail@gmail.com"

  def confirm(user)
    @user = user
  	mail(:to => user.email, :subject => "Welcome to csppBLOGGER")
  end
end
