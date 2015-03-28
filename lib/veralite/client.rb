require 'pp'
module VeraLite
  class Client
    def initialize(options = {})
      @bridge = options[:bridge]
      # Use options passed in, but fall back to module defaults
    end

    def get(options = {})
      path = options[:path] || ''
      arguments = options[:arguments] || ''
      response = HTTParty.get("http://#{@bridge}:3480/#{path}?#{arguments}&output_format=json")
      return response.body
    end

    def status
      json = get(:path =>'data_request', :arguments => 'id=status')
      unless json.nil?
        @bridge = VeraLite::Bridge.new(JSON.parse(json))
      end
    end

    # @return [Boolean]
    def same_options?(opts)
      opts.hash == options.hash
    end

    attr_accessor :bridge

  end
end
