class String
  
  # This hash holds the information for creating the dynamic
  # color methods
  @@colors = {
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
  
  # this function dynamically adds color functions to 
  # the String class based on the @@colors hash table.
  def self.create_colors
    
    # foreach color in the table
    @@colors.each do |key_color, value|
      # add the color function to the String class.
      String.send(:define_method, "#{key_color}") do
        return "\e[#{value}m#{self}\e[0m"
      end
    end
  end

  # returns a list of colors.
  def self.colors
    @@colors.keys
  end

  # this function should call each colors color
  def self.sample_colors
    @@colors.each do |key, value|
      eval("puts \"This is \" << \"#{key}\".#{key}")
    end
  end
end

# Adds the functions to the String class.
String.create_colors

# Testing below
# outputs all the colors
#puts String.colors
# outputs a sampling of the colors.
#String.sample_colors