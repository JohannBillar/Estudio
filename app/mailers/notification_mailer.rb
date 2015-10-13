class NotificationMailer < ActionMailer::Base
  default from: "no-reply@estudioapp.com"

  def comment_added
  	mail(to: "jwbillar@gmail.com", subject: "A comment has been added to your place.")
  end
end
