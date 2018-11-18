# frozen_string_literal: true

require 'dsapi/transactions/get_documentation'

RSpec.describe Dsapi::Transactions::GetDocumentation do
  it 'implements #call' do
    expect(described_class.new).to respond_to(:call)
  end
end
