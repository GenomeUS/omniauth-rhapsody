require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Rhapsody < OmniAuth::Strategies::OAuth2
      include OmniAuth::Strategy
      # Give your strategy a name.
      option :name, 'rhapsody'

      option :fields, [:name, :email]
      option :uid_field, :email
      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        :site          => 'https://api.rhapsody.com/v1',
        :authorize_url => 'https://api.rhapsody.com/oauth/authorize',
        :token_url     => 'https://api.rhapsody.com/oauth/access_token',
      }

      uid{ raw_info['id'] }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def image_url
        if images = raw_info['images']
          if first = images.first
            first['url']
          end
        end
      end

      def raw_info
        @raw_info ||= access_token.get('/me/listens').parsed
      end
    end
  end
end
