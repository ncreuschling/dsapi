# frozen_string_literal: true

require 'dsapi/client'

RSpec.describe Dsapi::Client do
  %i[
    get_datasets
    get_dataset
    get_dataset_file
    get_asset
    put_dataset
    delete_dataset
    get_documentation
    ping
  ].each do |method_symbol|
    it "implements ##{method_symbol}" do
      expect(described_class.new).to respond_to(method_symbol)
    end
  end

  describe 'unstubbed #ping' do
    it "returns 'pong' on success" do
      client = described_class.new
      expect(client.ping).to eq 'pong'
    end
  end
end
