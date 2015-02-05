## README

Issue seen when draper's helper is used just after sending an email.
To emulate the error, run the following commands:

```sh
$ git clone git@github.com:notalex/draper-mailer-error.git
$ cd draper-mailer-error
$ bundle install
$ bundle exec rails console
>> User.new.decorate.h.current_user
>> UserMailer.send_email.deliver
>> User.new.decorate.h.current_user
NoMethodError: undefined method `current_user' for #<#<Class:0x00000004c34ef8>:0x00000004c43570>
        from ...gems/draper-1.4.0/lib/draper/helper_proxy.rb:29:in `block in define_proxy'
        from (irb):3
        from ...gems/railties-4.2.0/lib/rails/commands/console.rb:110:in `start'

```

* Issue is also seen when User is an ActiveRecord or ActiveModel object.
* Issue is also seen when sending an actual email instead of using `letter_opener`.
* Issue was reproduced for ruby versions 1.9.3 and 2.1.5.
* Issue was reproduced for rails versions 4.1.7 and 4.2.0.
* Issue was not tested against older draper versions.
