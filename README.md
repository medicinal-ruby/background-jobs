# Sidekiq Background Jobs

Imagine your client sends a promotional email to 1,000,000 (one million) users and complains it takes over 10 minutes to finish the task.
Not only is this bad for the client, but what happens if it fails?

Lets have the client click Send and redirect to a page so they can continue their work! The emails will be sent in a queue and send them when they're ready.

Let's add the Sidekiq gem to our Gemfile:
```ruby
gem 'sidekiq'
```

Run ```bundle install ```


## Details
This repo contains some example workers free of use!


## Contents
* Welcome Email
* Send Invoice Email
* Reset Password


## Example Sidekiq Queues 
```yml
sidekiq_options queue: :maintenance
sidekiq_options queue: :low
sidekiq_options queue: :mid
sidekiq_options queue: :high
sidekiq_options queue: :subscribers
sidekiq_options queue: :mailers
sidekiq_options queue: :carrierwave ## Possible file caching
sidekiq_options queue: :cronjob
sidekiq_options queue: :notifications
sidekiq_options queue: :csvs
```
