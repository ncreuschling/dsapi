# frozen_string_literal: true

require 'dsapi/schema/dataset'

RSpec.describe Dsapi::Schema::Dataset do
  it '.new creates an object from a sample attributes hash with proper attribute assignment' do
    dataset = described_class.new(sample_attributes_hash)
    expect(dataset).to have_attributes(
      name: 'base',
      version: '13.1.0',
      type: 'zone-dataset',
      description: 'A 32-bit SmartOS image with just essential packages installed. Ideal for users who are comfortable with setting up their own environment and tools.',
      os: 'smartos',
      creator_name: 'sdc',
      uuid: 'f669428c-a939-11e2-a485-b790efc0f0c1',
      vendor_uuid: '352971aa-31ba-496c-9ade-a379feaecd52',
      platform_type: 'smartos',
      cloud_name: 'sdc',
      urn: 'sdc:sdc:base:13.1.0',
      created_at: '2013-04-26T15:16:02.419Z',
      updated_at: '2013-04-26T15:16:02.419Z'
    )
  end

  def sample_attributes_hash
    {
      'name' => 'base',
      'version' => '13.1.0',
      'type' => 'zone-dataset',
      'description' => 'A 32-bit SmartOS image with just essential packages installed. Ideal for users who are comfortable with setting up their own environment and tools.',
      'published_at' => '2013-04-26T15:16:02.419Z',
      'os' => 'smartos',
      'files' =>
        [
          {
            'path' => 'base-13.1.0.zfs.bz2',
            'sha1' => '40cdc6457c237cf6306103c74b5f45f5bf2d9bbe',
            'size' => 82_492_182,
            'url' => 'https://datasets.joyent.com/datasets/f669428c-a939-11e2-a485-b790efc0f0c1/base-13.1.0.zfs.bz2'
          }
        ],
      'requirements' => {
        'networks' => [
          {
            'name' => 'net0',
            'description' => 'public'
          }
        ]
      },
      'creator_name' => 'sdc',
      'uuid' => 'f669428c-a939-11e2-a485-b790efc0f0c1',
      'creator_uuid' => '352971aa-31ba-496c-9ade-a379feaecd52',
      'vendor_uuid' => '352971aa-31ba-496c-9ade-a379feaecd52',
      'platform_type' => 'smartos',
      'cloud_name' => 'sdc',
      'urn' => 'sdc:sdc:base:13.1.0',
      'created_at' => '2013-04-26T15:16:02.419Z',
      'updated_at' => '2013-04-26T15:16:02.419Z'
    }
  end
end
