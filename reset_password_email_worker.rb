class ResetPasswordEmailWorker
  sidekiq_options queue: "QUEUE_NAME_HERE", retry: 5

  def perform user_id
    user = User.find user_id
    unless user.password_reset_token.present?
      raise StandardError, "No reset token found for user #{user.email} - #{user.id}"
    end
    YourMailerHere.send_password_reset(user).deliver_now
  end
end
