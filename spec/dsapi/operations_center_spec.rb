# frozen_string_literal: true

require 'dsapi/operations_center'

RSpec.describe Dsapi::OperationsCenter do
  %w[
    operations.setup_faraday
    operations.parse_json_response
  ].each do |operation|
    it "resolves '#{operation}'" do
      expect { described_class.resolve(operation) }.not_to raise_error
    end
  end
end
