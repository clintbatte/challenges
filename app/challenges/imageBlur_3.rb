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
          @pixel[row_index][column_index + 1] = 1 unless column_index >= @width - 2 # count right
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



class Image_blur_two

  def initialize(image_two)
    @image_two = image_two
    @pixel_two = Marshal.load(Marshal.dump(@image_two))
    @coordinates = []
    @image_blur_two = []
  end

  def iterate_array_two
    @pixel_two.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        @coordinates << [row_index, column_index] if cell == 1
      end
    end
    puts @pixel_two.inspect
    puts @coordinates.inspect
  end

  def blur_cell_two
    @pixel_two.each_with_index do |row, row_index|
      row.each_with_index do |_cell, column_index|
        @coordinates.each do |x, y|

          @width = @pixel_two[0].count
          @height = @pixel_two.count

          next unless x == row_index && y == column_index

          @pixel_two[row_index + 1][column_index] = 1 unless row_index >= @height # count down
          @pixel_two[row_index - 1][column_index] = 1 unless row_index.zero? # count up
          @pixel_two[row_index][column_index - 1] = 1 unless column_index.zero? # count left
          @pixel_two[row_index][column_index + 1] = 1 unless column_index >= @width - 2 # count right
        end
      end
    end

    @pixel_two.each do |row|
      puts row.join
    end
    @image_blur_two << @pixel_two.inspect
    puts @image_blur_two
  end

  def output_image_two
    iterate_array_two
  end
end


image_array = [[0, 0, 0, 0], [0, 1, 0, 0], [0, 0, 0, 1], [0, 0, 0, 0]]
image_one = Image_blur_one.new(image_array)
image_one.output_image_one
image_one.blur_cell

puts "======================"

image_array_two = [[0, 1, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1], [0, 0, 0, 1]]
image_two = Image_blur_two.new(image_array_two)
image_two.output_image_two
image_two.blur_cell_two



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

