require 'nanoc'

module Nanoc
  module Filters
    class Gzip < Nanoc::Filter
      VERSION = '0.0.1'

      type :text => :binary

      def run(content, params = {})
        Zlib::GzipWriter.open(output_filename, Zlib::BEST_COMPRESSION) do |gz|
          gz.orig_name = File.basename(item[:filename])
          gz.mtime = mtime.to_i
          gz.write content
        end
      end

      def mtime
        File.mtime(item[:filename])
      end

    end
  end
end

