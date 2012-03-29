# DragonflyResizeAndPadProcessor

A DragonFly generator to do a resize and pad in your image


## Installation

Add this line to your application's Gemfile:

    gem 'dragonfly_resize_and_pad_processor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dragonfly_resize_and_pad_processor

## Usage

In your dragonfly configuration you can add it by

    app.processor.register(ResizeAndPadProcessor)

After you can use it like :

    process :resize_and_pad, :width => '512', :height => '512', :background => 'white'


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
