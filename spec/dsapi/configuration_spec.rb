# frozen_string_literal: true

require 'dsapi/configuration'

RSpec.describe Dsapi::Configuration do
  it "sets :base_uri to Joyent's API" do
    expect(described_class.config[:base_uri]).to eq 'https://datasets.joyent.com/'
  end

  it 'has no default for :faraday_ssl_options' do
    expect(described_class.config[:faraday_ssl_options]).to be_nil
  end

  it 'has no default for :faraday_proxy_options' do
    expect(described_class.config[:faraday_proxy_options]).to be_nil
  end
end
