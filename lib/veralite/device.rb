module VeraLite
  class Device

    def initialize(options = {})
      options.keys.each do |key|
        instance_variable_set( :"@#{key.downcase}", options[key] )
      end
      unless options['states'].nil?
        @states = Array.new()
        options['states'].each do |state|
          @states.push(VeraLite::Device::State.new(state))
        end
      end
    end

    attr_accessor :id, :states, :jobs, :tooltip, :status

  end
end
