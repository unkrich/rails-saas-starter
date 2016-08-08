# README

This rails application is to be used as a starter application for SaaS products/web applications/sites.

After looking at and using a lot of the projects already out there to support my own Rails applications, I decided it was time to create my own version so that I could easily create, manage, and implement features that would support my own purposes.

You are welcome to use this code in your own projects. When it is finished, the application should support the following functionalities.
  - User authentication/login via Devise and OmniAuth (Facebook and Twitter)
  - Subscription billing handled by Stripe
      - Also includes handling payment changes, and webhooks
  - Bootstrap implementation for ease of design



Ruby version
Using Ruby 2.3.0 with Rails 5.0



Deployment instructions

Start by running bundle install and rails db:migrate


* Setting up Devise & Omniauth
Devise should work on its own out of the box, but if you would like to use social sign-ups using Twitter and Facebook you are going to have to set the environment variables for your application that correspond to your API keys. 

First, create a new application with Twitter or Facebook (insert links here), then you can set their API keys as environment variables in the shell by using the following command to edit bashrc and adding the export commands to the file.

Run the below command in the shell:
source ~/.bashrc

Add these lines to the file:
export FB_APP_ID="myname@gmail.com"
export FB_APP_SECRET="myname@gmail.com"
export TWITTER_APP_ID="myname@gmail.com"
export TWITTER_APP_SECRET="myname@gmail.com"

Restart your terminal

Then go into config/initializers/devise.rb and change "your_url.com" to your URL to make the callback URL work.


* Stripe Subscriptions

In order to handle subscriptions and payments you are going to have to sign up for a Stripe account and add your API key to the application. In order to do so you are going to have set the environment variables for production in the same way as above for the variables stripe_publishable_key and stripe_secret_key .
The test secret/publishable keys for stripe can be set in config/secrets.yml

Set the plan id that you would like users to be signed up for in the subscriptions controller.

By default your Stripe url for webhooks is set to http://your_url.com/stripe/webhooks

See config/initializers/stripe.rb to see an example webhook and edit other settings.

* System dependencies

* Configuration

A good solution for setting environment variables in Heroku is to use 'heroku config:set GITHUB_USERNAME=joesmith'
see fore more information: https://devcenter.heroku.com/articles/config-vars

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)


To add SSL to a heroku site use the following link / Cloudflare:
https://support.cloudflare.com/hc/en-us/articles/205893698-Configure-CloudFlare-and-Heroku-over-HTTPS


* ...
