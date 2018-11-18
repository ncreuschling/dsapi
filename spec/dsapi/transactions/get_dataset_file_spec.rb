# frozen_string_literal: true

require 'dsapi/transactions/get_dataset_file'

RSpec.describe Dsapi::Transactions::GetDatasetFile do
  it 'implements #call' do
    expect(described_class.new).to respond_to(:call)
  end
end
