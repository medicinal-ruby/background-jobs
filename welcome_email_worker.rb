class WelcomeEmailWorker < ApplicationWorker
  sidekiq_options queue: "QUEUE_NAME_HERE", retry: 5

  def perform user_id
    YourMailerHere.welcome_email_method_here(user).deliver_now
  end
end
