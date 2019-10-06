class Image

    def initialize(image)
        @image = image
    end 
    
    def iterate_array
        @image.each do |item|
            puts item.join(", ")
        end
    end
    
    def output_image
        iterate_array
    end
end

@imageArray = [[0,0,0,0], [0,1,0,0], [0,0,0,1], [0,0,0,0]]
image = Image.new(@imageArray)
image.output_image



