class Image_blur_one

  def initialize(image_one)
    @image_one = image_one
    @pixel = Marshal.load(Marshal.dump(@image_one))
    @coordinates = []
    @image_blur = []
  end

  # def iterate_array
  #   @pixel.each_with_index do |row, row_index|
  #     row.each_with_index do |cell, column_index|
  #       @coordinates << [row_index, column_index] if cell == 1
  #     end
  #   end
  #   puts @pixel.inspect
  #   puts @coordinates.inspect
  # end

  def blur_cell
    @coordinates = []
    @pixel.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        @coordinates << [row_index, column_index] if cell == 1
      end
    end

    @pixel.each_with_index do |row, row_index|
      row.each_with_index do |_cell, column_index|
        @coordinates.each do |x, y|

          @width = @pixel[0].count
          @height = @pixel.count

          next unless x == row_index && y == column_index

          @pixel[x + 1][y] = 1 unless row_index >= @height # count down
          @pixel[x - 1][y] = 1 unless row_index.zero? # count up
          @pixel[x][y - 1] = 1 unless column_index.zero? # count left
          unless column_index >= @width - 2
            @pixel[x][y + 1] = 1
          end
        end
      end
    end

    @pixel.each do |row|
      puts row.join
    end
    @image_blur << @pixel.inspect
    puts @image_blur
  end

  def blur(distance)
    distance.times do
      blur_cell
    end
  end

  def output_image_one
    iterate_array
  end

  def output_image_one_array
    blur_cell
  end
end


image_array = [[0, 0, 0, 0], [0, 1, 0, 0], [0, 0, 0, 1], [0, 0, 0, 0]]
image_one = Image_blur_one.new(image_array)
# image_one.output_image_one
image_one.blur(3)

