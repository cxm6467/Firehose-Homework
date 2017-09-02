class Image
  attr_accessor :img

  def initialize(img)
    @img = img
    
  end

  def output_image
    self.img.each do |row|
      row.each do |line|
        #puts "#{line}"
        print line
      end
      puts
    end
  end

  def copy_image
    @img.map { | row | row.map { |cell| cell } }  
  end

  def blur
    copy = copy_image

    @img.each_with_index do |row, row_index|
      row.each_with_index do |cell, col_index|
        next unless cell == 1
          copy[row_index -1][col_index] = 1  unless row_index == 0             ## Up    --
          copy[row_index +1][col_index] = 1  unless row_index + 1 >= @img.size ## Down  -- Bottom
          copy[row_index][col_index -1] = 1  unless col_index == 0             ## Left  --
          copy[row_index][col_index +1] = 1  unless col_index + 1 >= row.size  ## Right -- Right Edge
       end
    end
    @img = copy
  end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 1]
  ])


image.output_image
puts "next step"
image.blur
puts "Blured"
image.output_image

