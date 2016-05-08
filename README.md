# rhapsody OmniAuth Strategy

This gem provides a simple way to authenticate to Rhapsody Web API using OmniAuth with OAuth2.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-rhapsody'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-rhapsody

## Usage

You'll need to register an app on rhapsody, you can do this here - https://developer.rhapsody.com/api#

Usage of the gem is very similar to other OmniAuth strategies.
You'll need to add your app credentials to `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :rhapsody, 'app_id', 'app_secret', scope: 'playlist-read-private user-read-private user-read-email'
end
```

Please replace the example `scope` provided with your own.
Read more about scopes here: https://developer.rhapsody.com/web-api/using-scopes/

Or with Devise in `config/initializers/devise.rb`:

```ruby
config.omniauth :rhapsody, 'app_id', 'app_secret', scope: 'playlist-read-private user-read-private user-read-email'
```

## Auth Hash Schema

Here's an example auth hash, available in `request.env['omniauth.auth']`:

Some of this fields depend on what scopes you ask, namely

* `user-read-email` affects the presence of the `email` field
* `user-read-private` affects the value of `name` (if the scope is
  missing it will reflect `username`) and the presence of
 `image`

```ruby
*** To Be Added ***

## More

This gem is brought to you by the [Genome](https://geno.me) team.
Enjoy!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
