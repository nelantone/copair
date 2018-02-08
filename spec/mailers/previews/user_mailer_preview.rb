# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form('Marcos@example.com', 'Marcos', "Hi! I am Marcos! Hello World! Don't Panic!")
  end

  def welcome
    UserMailer.welcome(FactoryBot.create(:user))
  end
end
