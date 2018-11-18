# frozen_string_literal: true

require 'dry/container'
require 'dsapi/operations/parse_json_response'
require 'dsapi/operations/setup_faraday'

module Dsapi
  class OperationsCenter
    extend Dry::Container::Mixin

    namespace 'operations' do
      register 'setup_faraday' do
        Dsapi::Operations::SetupFaraday.new
      end

      register 'parse_json_response' do
        Dsapi::Operations::ParseJsonResponse.new
      end
    end
  end
end
