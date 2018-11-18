# frozen_string_literal: true

require 'dsapi/transactions/delete_dataset'

RSpec.describe Dsapi::Transactions::DeleteDataset do
  it 'implements #call' do
    expect(described_class.new).to respond_to(:call)
  end
end
