# frozen_string_literal: true

require 'dry-struct'

module Dsapi
  module Schema
    class DatasetFile < Dry::Struct
      transform_keys(&:to_sym)

      # required attributes
      attribute :path, Dry::Types['strict.string']
      attribute :sha1, Dry::Types['strict.string']
      attribute :size, Dry::Types['strict.integer']

      # optional attribute for backward compatibility
      attribute :url, Dry::Types['strict.string'].optional
    end
  end
end
