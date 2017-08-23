class Image
  attr_accessor :img

  def initialize(img)
    @img = img
    
  end

  def output_image
    self.img.each do |row|
      row.each do |line|
        print line
      end
      puts
    end
  end

  def copy_image
    @img.map { | row | row.map { |cell| cell } }  
  end

  def blur(distance)
    copy = copy_image
    puts"Distance:  #{distance}"
    @img.each_with_index do |row, row_index|
      row.each_with_index do |cell, col_index|
        next unless cell == 1

          distance.times { |x|  copy[row_index -x][col_index] = 1 unless row_index == 0 }              ## Up
          distance.times { |x|  copy[row_index +x][col_index] = 1 unless row_index + 1 >= @img.size }  ## Bottom
          distance.times { |x|  copy[row_index][col_index -x] = 1 unless col_index == 0   }            ## Left
          distance.times { |x|  copy[row_index][col_index +x] = 1 unless col_index + 1 >= row.size}    ## Right


          ## Diagonals  [This probably doesn't work]
          # copy[(row_index -1)..distance][col_index..distance] = 1  unless row_index == 0             ## Diagonal Up    --
          # copy[(row_index +1)..distance][col_index..distance] = 1  unless row_index + 1 >= @img.size ## Diagonal Down  -- Bottom
          # copy[row_index][(col_index -1..distance)..distance] = 1  unless col_index == 0             ## Diagonal Left  --
          # copy[row_index][(col_index +1..distance)..distance] = 1  unless col_index + 1 >= row.size  ## Diagonal Right -- Right Edge

       end
    end
    @img = copy
  end
end


image = Image.new([
  [0, 0, 0, 1],
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0]
  ])

puts "Original image:"
puts "---"
image.output_image
puts "---"
puts "next step"
puts "---"
image.blur(3)
puts "Blured"
puts "---"
image.output_image
puts "---"
  