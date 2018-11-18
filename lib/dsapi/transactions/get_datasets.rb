# frozen_string_literal: true

require 'dry/transaction'
require 'dsapi/operations_center'
require 'dsapi/schema/dataset'

module Dsapi
  module Transactions
    class GetDatasets
      include Dry::Transaction(container: Dsapi::OperationsCenter)

      step :setup, with: 'operations.setup_faraday'
      step :request
      step :parse, with: 'operations.parse_json_response'
      step :evaluate

      private

      def request(faraday_connection)
        response = faraday_connection.get '/datasets'

        if response.success?
          Success(response.body)
        else
          Failure(response.body)
        end
      end

      def evaluate(input)
        datasets = input.map do |dataset_hash|
          Dsapi::Schema::Dataset.new(dataset_hash)
        end

        Success(datasets)
      end
    end
  end
end
