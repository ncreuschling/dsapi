# frozen_string_literal: true

require 'dry-struct'
require 'dsapi/schema/dataset_network'

module Dsapi
  module Schema
    class DatasetRequirements < Dry::Struct
      transform_keys(&:to_sym)

      attribute :networks, Dry::Types['strict.array'].of(Dsapi::Schema::DatasetNetwork).optional
    end
  end
end
