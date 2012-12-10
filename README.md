# Nanoc::Gzip::Filter

A [Nanoc][nanoc] filter to gzip content.

## Installation

Add this line to your application's Gemfile:

    gem 'nanoc-gzip-filter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nanoc-gzip-filter

## Usage

```ruby
compile %r{/assets/(stylesheets|javascripts)/.+/}, :rep => :gzip do
  filter :scss
  filter :gzip
end
```

```ruby
route '/assets/*/', :rep => :gzip do
  item.identifier.gsub(/\/$/, '') + '.' + item[:extension] + '.gz'
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[nanoc]: http://nanoc.stoneship.org/ "nanoc is a Ruby web publishing system for building small to medium-sized websites."

