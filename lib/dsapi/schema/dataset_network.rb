# frozen_string_literal: true

require 'dry-struct'

module Dsapi
  module Schema
    class DatasetNetwork < Dry::Struct
      transform_keys(&:to_sym)

      attribute :name, Dry::Types['strict.string'].optional
      attribute :description, Dry::Types['strict.string'].optional
    end
  end
end
