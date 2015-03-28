require 'httparty'
require 'json'
require 'veralite/bridge'
require 'veralite/client'
require 'veralite/device'
require 'veralite/device/state'
require 'veralite/scene'

module VeraLite
  class << self

    def client(options={})
      @client = VeraLite::Client.new(options)
      @client.status
      @client
    end

  end
end
# http://ip_address:3480/data_request?id=status&output_format=xml&UDN=uuid:4d494342-5342-5645-0002-000000000002
# http://ip_address:3480/data_request?id=status&output_format=xml&DeviceNum=6
