module VeraLite
  class Bridge

    def initialize(options = {})
      options.keys.each do |key|
        instance_variable_set( :"@#{key.downcase}", options[key] )
      end
      unless options['devices'].nil?
        @devices = Array.new()
        options['devices'].each do |device|
          @devices.push(VeraLite::Device.new(device))
        end
      end
      unless options['scenes'].nil?
        @scenes = Array.new()
        options['scenes'].each do |scene|
          @scenes.push(VeraLite::Scene.new(scene))
        end
      end
    end

    def devicebyid(id)
      @devices.each do |device|
        return device if device.id == id
      end
    end

    attr_accessor :startup, :devices, :scenes, :loadtime, :dataversion, :userdata_dataversion, :timestamp, :zwavestatus, :localtime

  end
end
