class Image

  def initialize(image)
    @image = image
    @pixel = Marshal.load(Marshal.dump(@image))
    @coordinates = []
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

          @pixel[row_index - 1][column_index] = 1 unless row_index.zero? # count up
          @pixel[row_index + 1][column_index] = 1 unless row_index >= @height # count down
          @pixel[row_index][column_index - 1] = 1 unless column_index.zero? # count left
          @pixel[row_index][column_index + 1] = 1 unless column_index >= @width - 1 # count right
        end
      end
    end

    @pixel.each do |row|
      puts row.join
    end
  end

  def output_image
    iterate_array
  end
end

@imageArray = [[0, 0, 0, 0], [0, 1, 0, 0], [0, 0, 0, 1], [0, 0, 0, 0]]
image = Image.new(@imageArray)
image.output_image
image.blur_cell

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

