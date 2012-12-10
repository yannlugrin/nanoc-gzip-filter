require 'nanoc'
require 'zlib'

module Nanoc
  module Filters
    autoload 'Gzip', 'nanoc/filters/gzip'

    Nanoc::Filter.register '::Nanoc::Filters::Gzip', :gzip
  end
end

