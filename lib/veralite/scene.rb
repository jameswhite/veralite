module VeraLite
  class Scene

    def initialize(options = {})
      options.keys.each do |key|
        instance_variable_set( :"@#{key.downcase}", options[key] )
      end
    end

    attr_accessor :id, :jobs, :tooltip, :status

  end
end
