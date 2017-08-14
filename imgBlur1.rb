class Image

  def initialize(img)
    self.img = img
  end

  def output_image
    puts "#{self.img}"

  end

end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
  ])

image.output_image