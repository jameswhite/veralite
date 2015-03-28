module VeraLite
  class Device::State

    def initialize(states)
      @service = Hash.new
      states.each do |fields|
        service = fields['service']
        @service[service] = Hash.new if @service[service].nil?
        @service[service][fields['variable']] = fields['value']
      end
    end

    attr_accessor :service

  end
end
