# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form
    UserMailer.contact_form('Marcos@example.com', 'Marcos', "Hi! I am Marcos! Hello World! Don't Panic!")
  end

  def confirmation_instructions
    DeviseMailer.confirmation_instructions(User.first, "faketoken", {})
  end

  def reset_password_instructions
    DeviseMailer.reset_password_instructions(User.first, "faketoken", {})
  end

  def unlock_instructions
    DeviseMailer.unlock_instructions(User.first, "faketoken", {})
  end
end
