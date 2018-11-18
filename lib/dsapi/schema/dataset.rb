# frozen_string_literal: true

require 'dry-struct'
require 'dsapi/schema/dataset_file'
require 'dsapi/schema/dataset_requirements'

module Dsapi
  module Schema
    class Dataset < Dry::Struct
      transform_keys(&:to_sym)

      # required attributes
      attribute :uuid, Dry::Types['strict.string']
      attribute :name, Dry::Types['strict.string']
      attribute :version, Dry::Types['strict.string']
      attribute :type, Dry::Types['strict.string']
      attribute :os, Dry::Types['strict.string']
      attribute :description, Dry::Types['strict.string']
      attribute :files, Dry::Types['strict.array'].of(Dsapi::Schema::DatasetFile)

      # optional attributes
      attribute :published_at, Dry::Types['strict.string'].optional
      attribute :requirements, Dsapi::Schema::DatasetRequirements.optional
      attribute :creator_name, Dry::Types['strict.string'].optional
      attribute :vendor_uuid, Dry::Types['strict.string'].optional
      attribute :platform_type, Dry::Types['strict.string'].optional
      attribute :cloud_name, Dry::Types['strict.string'].optional
      attribute :urn, Dry::Types['strict.string'].optional
      attribute :created_at, Dry::Types['strict.string'].optional
      attribute :updated_at, Dry::Types['strict.string'].optional
    end
  end
end
