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
