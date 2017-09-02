class Image
  attr_accessor :img

  def initialize(img)
    self.img = img
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

end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
  ])


image.output_image