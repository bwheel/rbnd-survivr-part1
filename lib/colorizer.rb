class String
  
# this function should create a new function for each color.
  def self.create_colors
    colors = {
      :red=> 31, 
      :green=> 32, 
      :yellow=> 33, 
      :blue=> 34, 
      :pink=> 35, 
      :light_blue=> 36, 
      :white=> 97, 
      :light_grey=> 37, 
      :black=> 30
    }

    colors.each do |key_color, value|

       color_func = %Q{
        def #{key_color}
          return "\e[#{value}m\#{self}\e[0m"
        end
      }
      String.class_eval(color_func)
      #String.class_eval do
      #  def key_color
      #    return "\e[#{value}m\#{self}\e[0m"
      #  end
      #end
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
String.create_colors
puts "test".red
puts "test".green
puts "test".blue
puts "test".light_grey