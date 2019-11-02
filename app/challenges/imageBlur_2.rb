# class Image

#     def initialize(image)
#         @image = image
#     end

#     def iterate_array
#         @image.each do |item|
#             puts item.join(", ")
#         end
#     end

#     def output_image
#         iterate_array
#     end
# end

# @imageArray = [[0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]]
# image = Image.new(@imageArray)
# image.output_image

class Image

  def initialize(image)
    @image = image
    @pixel = Marshal.load(Marshal.dump(@image))
    @coordinates = []
  end

  def iterate_array
    @pixel.each_with_index do |row, row_index|
      row.each_with_index do |cell, column_index|
        @coordinates.to_ary << [row_index, column_index] if cell == 1

        if @pixel[row_index, column_index + 1] && [column_index].length.positive?
          cell == 1
        end
        if @pixel[row_index, column_index - 1] && [column_index].length.positive?
          cell == 1
        end
        if @pixel[row_index + 1, column_index] && [row_index].length.positive?
          cell == 1
        end
        if @pixel[row_index - 1, column_index] && [row_index].length.positive?
          cell == 1
        end
      end
      puts @pixel
      puts @coordinates.join " ,"
    end
  end

  #
  # def blur_cell
  #
  # end

  def output_image
    iterate_array
  end
end

@imageArray = [[0, 0, 0, 0], [0, 1, 0, 0], [0, 0, 0, 1], [0, 0, 0, 0]]
image = Image.new(@imageArray)
image.output_image


# Prime.each_with_index(10) do |prime, i|
#    puts "#{i}. #{prime}"
# end

#================================================


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

