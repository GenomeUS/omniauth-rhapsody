# Rhapsody OmniAuth Strategy

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

  { "provider":"rhapsody",
     "uid":"A155SDLKJLKSFJLKJLSKJD30A96033200CA",
     "info":
      {"uid":"A15KSJLKJSLDKJE0430A96033200CA", "name":nil, "email":nil},
     "credentials":
      {"token":"OLKSJDkjsfojasLKJsfjksdlkjZmM0LThiOTgtYzg5MThlZThiZGNj",
       "refresh_token":"3sdk34c97-1ce5-443455-8999-e5aasdlkj7f72",
       "expires_at":1463103543,
       "expires":true},
     "extra":
      {"raw_info":
        {"me":
          {"id":"A1KJSDKJLKJFHJSDLKJFA96033200CA",
           "realName":"Matt Fitz-Henry",
           "screenName":"mfitzhenry",
           "gender":"male",
           "visibility":"private",
           "type":"member",
           "href":
            "http://api.rhapsody.com/members/A23498983409584098098457CA",
           "favoriteAlbumsCount":0,
           "favoriteArtistsCount":0,
           "favoriteTracksCount":0,
           "playlistsTotalCount":0,
           "playlistsTotalCount":0,
     "info":
      {"uid":"A15IFUNSYFLSKE0430A96033200CA", "name":nil, "email":nil},
     "credentials":asdkljlafkjJHSJDHKJjskndViYzgtNmI4Ny00ZmM0LasdlkjqweiuLAULkrl",
       "refresh_token":"334f8c97-1ce7-4434-8999-easdasdljkjsd72",
       "expires_at":1463103543,
       "expires":true},
     "extra":
      {"raw_info":
        {"me":
          {"id":"A155547F650900CAE0430A96033200CA",
           "realName":"Matt Fitz-Henry",
           "screenName":"mfitzhenry",
           "gender":"male",
           "visibility":"private",
           "type":"member",
           "href":
            "http://api.rhapsody.com/members/A155547F650900CAE048723409812389200CA",
           "favoriteAlbumsCount":0,
           "favoriteArtistsCount":0,
           "favoriteTracksCount":0,
           "playlistsTotalCount":0,
           "playlistsPublishedCount":0,
           "stationsCount":0,
           "radioCount":0,
           "followingCount":0,
           "followerCount":0,
           "avatar":
            "http://direct.rhapsody.com/imageserver/v2/external/aHR0cHM6Ly9yaGFwc29keS1uYXBpLnMzLmFtYXpvbmF3cy5jb20vbWVtYmVyLzAwMDAwMF9kZWZhdWx0L2F2YXRhci9vcmlnaW5hbF8w/images/108x108.jpg",
           "avatarId":
            "aHR0cHM6Ly9yaGFwc29keS1uYXBpLnMzLmFtYXpvbmF3cy5jb20vbWVtYmVyLzAwMDAwMF9kZWZhdWx0L2F2YXRhci9vcmlnaW5hbF8w",
           "defaultAvatar":"true",
           "avatarVersion":1,
           "links":
         }
        }
      }
    }

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
