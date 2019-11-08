class Person
    attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

    def initialize(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
          # iterates using "each" and the .send method to mass assign the value of each key/value pair to its associated key (i.e. method)
          # this #initialize method is useful because it enables generic method creation instead of creating specific methods that might change over time
    end

end