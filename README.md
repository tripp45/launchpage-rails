[![Code Climate](https://codeclimate.com/github/codelitt/launchpage-rails/badges/gpa.svg)](https://codeclimate.com/github/codelitt/launchpage-rails)
[![Test Coverage](https://codeclimate.com/github/codelitt/launchpage-rails/badges/coverage.svg)](https://codeclimate.com/github/codelitt/launchpage-rails/coverage)
[![Build Status](https://semaphoreci.com/api/v1/projects/9bc21553-c95d-4769-9ea7-a3af17dc4fd1/478931/badge.svg)](https://semaphoreci.com/codelitt/launchpage-rails)      


This is a quick application to get up and running quickly with your new
startup idea so you can focus on your actual product. It is a prelaunch
MVP landing page aimed at gathering signups and testing market interest.
It was originally written as an open source alternative to LaunchRock.
It is written with Ruby on Rails. Originally, we needed an application
that provided signup for two types of users for a two-sided market. It's
out of the box, ready to go.  Just add styling. Fork and enjoy!

*It may have a bit of our content, but it wouldn't take you too long to
change it to fit your need. Just a heads up.*

###Example

Here is an example of the launchpage once it's all styled/designed
(although, both the project and design are old):
[Backstagr](http://www.backsta.gr)

###Features

1. Email collection for two types of users

2. Social sharing

3. Auto mailer

4. Ability to export user emails via CSV

5. Post signup survey and questionaire to gather more market research
   from your beta users.

**Coming soon**

6. Waiting list social actions (i.e. move up the list if you share to 3
   friends or something along these lines)

###Get it running
Items you should change to customise it for your needs (baring the
obvious. I'm not listing those. You'll see the title, etc.):

  - The .gitignore includes the mail initializer.

1. Add the following environment variables with your configuration.

    ```
     SMTP_ADDRESS
     SMPT_PORT
     DOMAIN
     SMTP_USERNAME
     SMTP_PASSWORD
     FROM_EMAIL
     MAIL_SUBJECT
     DEV_EMAIL
     AUTH_TOKEN
     ```

    An example,

    ```
     SMTP_ADDRESS= smtp.gmail.com
     SMPT_PORT= 587
     DOMAIN= mydomain
     SMTP_USERNAME= myuser@mydomain.com
     SMTP_PASSWORD= mypassword
     FROM_EMAIL= welcome@example.com
     MAIL_SUBJECT= Welcome to the awesome service!
     DEV_EMAIL= test@example.com
     AUTH_TOKEN= myPasswordForAccessingUsersList
    ```
More details on setting up environment variables are available [here](http://railsapps.github.io/rails-environment-variables.html).

2. You'll want to go into `app/views/static/success` as well as
   `app/views/layouts/_twitterscript`/`app/views/layouts/_facebookscript`
and change the details of the social plugins to match your
domain/twitter/facebook. It's easy to add HN, Reddit, etc.

- All the normal rails stuff to start up an app. I'm only calling out
   the items that need to be changed that aren't so obvious.


###Contributing

1. Fork the repo and clone it.

2. Make your changes in a new git branch:

   `git checkout -b my-fix-branch master`

3. Create your patch, including appropriate test cases making sure they
   pass.

4. Push your branch to GitHub:

   `git push origin my-fix-branch`

5. In GitHub, send a pull request to `launchpage-rails:master`.


###Contributors
A really big thanks to [kaiomagalhaes](https://github.com/kaiomagalhaes)
for updating this to Rails 4 and improving some very old code.

- [codelitt](https://github.com/codelitt)
- [mikebabb](https://github.com/mikebabb)
- [kaiomagalhaes](https://github.com/kaiomagalhaes)

