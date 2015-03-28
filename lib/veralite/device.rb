module VeraLite
  class Device

    def initialize(options = {})
      options.keys.each do |key|
        instance_variable_set( :"@#{key.downcase}", options[key] )
      end
      unless options['states'].nil?
        @state=VeraLite::Device::State.new(options['states'])
      end
    end

    attr_accessor :id, :state, :jobs, :tooltip, :status

  end
end
