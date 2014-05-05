require File.expand_path('../lib/hash_attr/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'hash_attr'
  s.version     = HashAttr::VERSION
  s.date        = '2014-05-05'
  s.summary     = 'get/set designated attributes from/to a hash'
  s.description = 'get/set designated attributes from/to a hash'
  s.authors     = ['SecondMarket']
  s.email       = 'engineering@secondmarket.com'
  s.files       = `git ls-files`.split($\)
  s.homepage    = 'https://github.com/secondmarket/hash-attr'
  s.license     = 'MIT'
end
