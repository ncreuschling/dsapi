# frozen_string_literal: true

require 'dry/transaction'
require 'dsapi/operations_center'

module Dsapi
  module Transactions
    class DeleteDataset
      include Dry::Transaction(container: Dsapi::OperationsCenter)

      step :setup, with: 'operations.setup_faraday'
    end
  end
end
