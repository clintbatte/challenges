class Image_blur_one

  def initialize(image_one)
    @image_one = image_one
    @pixel = Marshal.load(Marshal.dump(@image_one))
    @coordinates = []
    @image_blur = []
  end

  def iterate_array
    @pixel.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        @coordinates << [row_index, column_index] if cell == 1
      end
    end
    puts @pixel.inspect
    puts @coordinates.inspect
  end

  def blur_cell
    @pixel.each_with_index do |row, row_index|
      row.each_with_index do |_cell, column_index|
        @coordinates.each do |x, y|

          @width = @pixel[0].count
          @height = @pixel.count

          next unless x == row_index && y == column_index

          @pixel[row_index + 1][column_index] = 1 unless row_index >= @height # count down
          @pixel[row_index - 1][column_index] = 1 unless row_index.zero? # count up
          @pixel[row_index][column_index - 1] = 1 unless column_index.zero? # count left
          unless column_index >= @width - 2
            @pixel[row_index][column_index + 1] = 1
          end # count right
        end
      end
    end

    @pixel.each do |row|
      puts row.join
    end
    @image_blur << @pixel.inspect
    puts @image_blur
  end

  def output_image_one
    iterate_array
  end

  def output_image_one_array
    blur_cell
  end
end


class Image_blur

  def initialize(image)
    @image = image
    @pixels = Marshal.load(Marshal.dump(@image))
    @coordinates = []
    @blur_array = []
  end

  def find_ones
    @pixels.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        @coordinates << [row_index, column_index] if cell == 1
      end
    end
    puts @pixels.inspect
    puts @coordinates.inspect
  end

  def manhattan_distance (x1, x2, y1, y2)
    horizontal_distance = (x1 - x2).abs
    vertical_distance = (y1 - y2).abs
    horizontal_distance + vertical_distance
  end

  def blur_cells(blur_num)
    @pixels.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        @coordinates.each do |found_row_index, found_column_index|
          if manhattan_distance(column_index, row_index, found_row_index, found_column_index) <= blur_num
            @pixels[row_index][column_index] = 1
          end

          @width = @pixels[0].count
          @height = @pixels.count

          next unless x == row_index && y == column_index

          @pixels[row_index + 1][column_index] = n unless row_index >= @height # count down
          @pixels[row_index - 1][column_index] = n unless row_index.zero? # count up
          @pixels[row_index][column_index - 1] = n unless column_index.zero? # count left
          unless column_index >= @width - 2
            @pixels[row_index][column_index + 1] = n
          end # count right
        end
      end
    end
    @pixels.each do |row|
      puts row.join
    end
    @blur_array << @pixels.inspect
    puts @blur_array
  end

  def output_new_image
    find_ones
  end

end


image_array = [[0, 0, 0, 0], [0, 1, 0, 0], [0, 0, 0, 1], [0, 0, 0, 0]]
image_one = Image_blur_one.new(image_array)
image_one.output_image_one
image_one.blur_cell

puts "======================"

image_array2 = [[0, 1, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1], [0, 0, 0, 1]]
image_blur = Image_blur.new(image_array2)
image_blur.output_new_image
image_blur.blur_cells(3)


# def blur_cell_two
#   @image2.each_with_index do |row, row_index|
#     row.each_with_index do |_cell, column_index|
#       @coordinates.each do |x, y|
#
#         @width = @image2[0].count
#         @height = @image2.count
#
#         next unless x == row_index && y == column_index
#
#         @image2[row_index + 1][column_index] = 1 unless row_index >= @height # count down
#         @image2[row_index - 1][column_index] = 1 unless row_index.zero? # count up
#         @image2[row_index][column_index - 1] = 1 unless column_index.zero? # count left
#         @image2[row_index][column_index + 1] = 1 unless column_index >= @width - 2 # count right
#       end
#     end
#   end
#
#   @image2.each do |row|
#     puts row.join
#   end
#   @image_bur2 << @image2.inspect
#   puts @image_bur2
# end


# ===============================================
#  experiments
# ===============================================

# class Image
#     def initialize(image)
#         @image = image
#     end
#     def iterate_array
#         @image.each_index do |x|
#             @image.each_index do |y|
#                 if @image[x][y] == 1 then
#                     puts "X:#{x} Y:#{y}"
#                 end
#             end
#         end
#     end
#     def output_image
#         iterate_array
#     end
# end

# @imageArray = [[0,0,0,0], [0,1,0,0,0,0,0,0,], [0,0,0,1], [0,0,0,0]]
# image = Image.new(@imageArray)
# image.output_image

