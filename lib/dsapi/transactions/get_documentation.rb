# frozen_string_literal: true

require 'dry/transaction'
require 'dsapi/operations_center'

module Dsapi
  module Transactions
    class GetDocumentation
      include Dry::Transaction(container: Dsapi::OperationsCenter)

      step :setup, with: 'operations.setup_faraday'
      step :request
      step :parse, with: 'operations.parse_json_response'
      step :evaluate

      private

      def request(faraday_connection)
        response = faraday_connection.get '/'

        if response.success?
          Success(response.body)
        else
          Failure(response.body)
        end
      end

      def evaluate(input)
        Success(input)
      end
    end
  end
end
