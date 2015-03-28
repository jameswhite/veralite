module VeraLite
  class Device::State

    def initialize(options = {})
      options.keys.each do |key|
        instance_variable_set( :"@#{key.downcase}", options[key] )
      end
    end

    attr_accessor :id, :service, :variable, :value

  end
end
