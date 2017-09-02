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

  def blur(distance)

    distance.times do ## Blur for the number of times the distance is called
      copy = copy_image
        @img.each_with_index do |row, row_index|
          row.each_with_index do |cell, col_index|
            next unless cell == 1
              copy[row_index -1][col_index] = 1  unless row_index == 0             ## Up
              copy[row_index +1][col_index] = 1  unless row_index + 1 >= @img.size ## Down
              copy[row_index][col_index -1] = 1  unless col_index == 0             ## Left
              copy[row_index][col_index +1] = 1  unless col_index + 1 >= row.size  ## Right
           end
        end
      @img = copy
    end
  end
end

# To get this running, you need to run "gem install rspec"
require 'rspec'

RSpec.describe Image do
  describe '#blur' do
    it 'will blur the top-left corner' do
      original_image = [
        [1, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ]

      blurred_image = [
        [1, 1, 0, 0],
        [1, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ]

      image = Image.new(original_image)
      image.blur(1)
      expect(image.img).to eq(blurred_image)
    end

    it 'will blur the top-right' do
      original_image = [
        [0, 0, 0, 1],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ]

      blurred_image = [
        [0, 0, 1, 1],
        [0, 0, 0, 1],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ]

      image = Image.new(original_image)
      image.blur(1)
      expect(image.img).to eq(blurred_image)
    end

    it 'will blur the bottom-left' do
       original_image = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [1, 0, 0, 0]
      ]

      blurred_image = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [1, 0, 0, 0],
        [1, 1, 0, 0]
      ]

      image = Image.new(original_image)
      image.blur(1)
      expect(image.img).to eq(blurred_image)     
    end


    it 'will blur the bottom-right'
    it 'will blur the center'
  end
end