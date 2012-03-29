class ResizeAndPadProcessor

  include Dragonfly::Configurable
  include Dragonfly::ImageMagick::Utils

  def resize_and_pad(temp_object, options = {})
    width = options[:width]
    height = options[:height]
    background = options[:background] || :transparent
    gravity = options[:gravity] || 'Center'

    args = ["-resize '#{width}x#{height}>'"]
    if background == :transparent
      args << '-background "rgba(0, 0, 0, 0.0)"'
    else
      args << "-background #{background}"
    end
    args << "-gravity #{gravity}"
    args << "-extent '#{width}x#{height}'"
    p args
    convert(temp_object, args.join(' '))
  end

  # rmagick_image(temp_object) do |image|
  #   image.resize_to_fit!(width, height)
  #   new_img = ::Magick::Image.new(width, height)
  #   new_img.format = image.format
  #   if background == :transparent
  #     filled = new_img.matte_floodfill(1, 1)
  #   else
  #     filled = new_img.color_floodfill(1, 1, ::Magick::Pixel.from_color(background))
  #   end
  #   filled.composite!(image, gravity, ::Magick::OverCompositeOp)
  #   filled
  # end
end
