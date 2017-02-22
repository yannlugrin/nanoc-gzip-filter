# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nanoc/filters/gzip', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Yann Lugrin']
  gem.email         = ['yann.lugrin@sans-savoir.net']
  gem.description   = %q{A nanoc filter to gzip content}
  gem.summary       = %q{A nanoc filter to gzip content}
  gem.homepage      = 'https://github.com/yannlugrin/nanoc-gzip-filter'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'nanoc-gzip-filter'
  gem.require_paths = ['lib']
  gem.version       = Nanoc::Filters::Gzip::VERSION

  gem.add_dependency 'nanoc',     '>= 4.4.0'

  gem.add_development_dependency 'rake'
end
