class UserMailer < ActionMailer::Base
  def send_email
    mail(to: 'someone@example.com', subject: 'testing draper', from: 'someone_else@example.com')
  end
end
