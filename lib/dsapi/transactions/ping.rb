# frozen_string_literal: true

require 'dry/transaction'
require 'dsapi/operations_center'

module Dsapi
  module Transactions
    class Ping
      include Dry::Transaction(container: Dsapi::OperationsCenter)

      step :setup, with: 'operations.setup_faraday'
      step :request
      step :parse, with: 'operations.parse_json_response'
      step :evaluate

      private

      def request(faraday_connection)
        response = faraday_connection.get '/ping'

        if response.success?
          Success(response.body)
        else
          Failure(response.body)
        end
      end

      def evaluate(input)
        if input['ping'] == 'pong'
          Success('pong')
        else
          Failure(input['ping'])
        end
      end
    end
  end
end
