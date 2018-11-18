# frozen_string_literal: true

require 'faraday'
require 'dry/transaction/operation'
require 'dsapi/configuration'

module Dsapi
  module Operations
    class SetupFaraday
      include Dry::Transaction::Operation

      def call(_input)
        connection = Faraday.new faraday_options

        Success(connection)
      end

      private

      def faraday_options
        {
          url: Dsapi::Configuration.config.base_uri,
          params: nil,
          headers: {
            Accept: 'application/json'
          },
          request: nil,
          ssl: Dsapi::Configuration.config.faraday_ssl_options,
          proxy: Dsapi::Configuration.config.faraday_proxy_options
        }.freeze
      end
    end
  end
end
