class ConfirmNewUserMailer < ActionMailer::Base
  default from: "newUser@csppBLOGGER.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirm_new_user_mailer.confirm.subject
  #
  def confirm (newUser)
  	@current = User.find(newUser.user_id)
  	@email = @current.email

    mail to: "#{@current.email}"
  end
end
