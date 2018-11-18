# frozen_string_literal: true

require 'dry/core/deprecations'

require 'dsapi/transactions/get_datasets'
require 'dsapi/transactions/get_dataset'
require 'dsapi/transactions/get_dataset_file'
require 'dsapi/transactions/put_dataset'
require 'dsapi/transactions/delete_dataset'
require 'dsapi/transactions/get_documentation'
require 'dsapi/transactions/ping'

module Dsapi
  class Client
    extend Dry::Core::Deprecations[:deprecation]

    def get_datasets
      Dsapi::Transactions::GetDatasets.new.call
    end

    def get_dataset(uuid:)
      Dsapi::Transactions::GetDataset.new.call(uuid: uuid)
    end

    def get_dataset_file(id:, path:)
      Dsapi::Transactions::GetDatasetFile.new.call(id: id, path: path)
    end

    def get_asset(_path:)
      raise NotImplementedError
    end
    deprecate :get_asset, :get_dataset_file

    def put_dataset(uuid:)
      Dsapi::Transactions::PutDataset.new.call(uuid: uuid)
    end

    def delete_dataset(uuid:)
      Dsapi::Transactions::DeleteDataset.new.call(uuid: uuid)
    end

    def get_documentation
      Dsapi::Transactions::GetDocumentation.new.call do |m|
        m.success do |documentation|
          documentation
        end
        m.failure do
          nil
        end
      end
    end

    def ping
      Dsapi::Transactions::Ping.new.call do |m|
        m.success do |pong|
          pong
        end
        m.failure do
          nil
        end
      end
    end
  end
end
