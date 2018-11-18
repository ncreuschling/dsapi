# frozen_string_literal: true

require 'dsapi/transactions/get_datasets'

RSpec.describe Dsapi::Transactions::GetDatasets do
  it 'implements #call' do
    expect(described_class.new).to respond_to(:call)
  end
end
