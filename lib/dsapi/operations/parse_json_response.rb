# frozen_string_literal: true

require 'json'
require 'dry/transaction/operation'

module Dsapi
  module Operations
    class ParseJsonResponse
      include Dry::Transaction::Operation

      def call(response_body)
        hash = JSON.parse response_body

        Success(hash)
      end
    end
  end
end
