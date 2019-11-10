class Image
  def initialize(image)
    @image = image
    @pixel = Marshal.load(Marshal.dump(@image))
    @image_blur = []
  end

  def get_cell
    @coordinates = []
    @pixel.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        @coordinates << [row_index, column_index] if cell == 1
      end
    end
    @coordinates.each do |x, y|
      # @width = @pixel[0].count
      # @height = @pixel.count

      @pixel[x][y + 1] = 1 if y + 1 <= @pixel.length - 1
      @pixel[x][y - 1] = 1 if y - 1 >= 0
      @pixel[x + 1][y] = 1 if x + 1 <= @pixel.length - 1
      @pixel[x - 1][y] = 1 if x - 1 >= 0
    end
    puts "================= the blurred image output ==================="
    @pixel.each do |row|
      puts row.join
    end
    @image_blur << @pixel.inspect
    puts "=============== grouping back into an array =================="
    puts @image_blur
    puts ""
  end

  def blur(distance)
    distance.times do
      get_cell
    end
  end
end


image_array = [[0, 0, 0, 0], [0, 1, 0, 0], [0, 0, 0, 1], [0, 0, 0, 0]]
image = Image.new(image_array)
image.blur(3)

