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

  def blur(_distance)
    distance = _distance + 1
    copy = copy_image
    puts"Distance:  #{distance}"
    @img.each_with_index do |row, row_index|
      row.each_with_index do |cell, col_index|
        next unless cell == 1

          ## "Straight distances"
          distance.times { |x|  copy[row_index -x][col_index] = 1 unless row_index == 0 }              ## Up
          distance.times { |x|  copy[row_index +x][col_index] = 1 unless row_index + 1 >= @img.size }  ## Down
          distance.times { |x|  copy[row_index][col_index -x] = 1 unless col_index == 0   }            ## Left
          distance.times { |x|  copy[row_index][col_index +x] = 1 unless col_index + 1 >= row.size}    ## Right

          ## Diagonals  [
          distance.times { |x| copy[row_index -x][col_index-x] = 1 unless col_index == 0 || row_index + 1 >= @img.size }            ## Down and to the left
          distance.times { |x| copy[row_index -x][col_index+x] = 1 unless col_index + 1 >= row.size || row_index + 1 >= @img.size}  ## Down and to the right 
          distance.times { |x| copy[row_index +x][col_index-x] = 1 unless col_index == 0 || row_index == 0 }                        ## Up and to the left 
          distance.times { |x| copy[row_index +x][col_index+x] = 1 unless col_index + 1 >= row.size || row_index == 0 }             ## Up and to the right  
       end
    end
    @img = copy
  end
end


image = Image.new([
  [0, 0, 0, 0],
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
image.blur(1)
puts "Blured"
puts "---"
image.output_image
puts "---"
  