# frozen_string_literal: true

require 'dsapi/transactions/ping'

RSpec.describe Dsapi::Transactions::Ping do
  it 'implements #call' do
    expect(described_class.new).to respond_to(:call)
  end
end
