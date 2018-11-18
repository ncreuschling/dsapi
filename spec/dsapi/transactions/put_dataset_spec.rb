# frozen_string_literal: true

require 'dsapi/transactions/put_dataset'

RSpec.describe Dsapi::Transactions::PutDataset do
  it 'implements #call' do
    expect(described_class.new).to respond_to(:call)
  end
end
