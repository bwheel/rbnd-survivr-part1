class String
  
    @colors = {
        :red => 31, 
        :green => 32, 
        :yellow => 33, 
        :blue => 34, 
        :pink => 35, 
        :light_blue => 36, 
        :white => 97, 
        :light_grey => 37, 
        :black => 30
      }
  

# this function should create a new function for each color.
  def create_colors
    @colors.each do |key_color, value|
      class_eval("def self.{color}; return \"\e[\" << {value} << to_s << \"\e[0m]\"    ; end; ")
    end
  end

  def self.colors
    @colors.keys
  end

  # this function should call each colors color
  def self.sample_colors
    @colors.each do |key, value|
      # TODO: call the class function associated with key.
    end
  end
end

temp = "test"
valuex = 55
colorx = :red

puts "def #{colorx}; return \e[#{valuex} \"#{temp.to_s}\"\e[0m]\"    ; end;" 