# frozen_string_literal: true

require 'dry/configurable'

module Dsapi
  class Configuration
    extend Dry::Configurable

    setting :base_uri, 'https://datasets.joyent.com/'

    setting :faraday_ssl_options
    setting :faraday_proxy_options
  end
end
