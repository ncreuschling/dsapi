# frozen_string_literal: true

require 'dsapi/transactions/get_dataset'

RSpec.describe Dsapi::Transactions::GetDataset do
  it 'implements #call' do
    expect(described_class.new).to respond_to(:call)
  end
end
