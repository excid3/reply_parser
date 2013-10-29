# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reply_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "reply_parser"
  spec.version       = ReplyParser::VERSION
  spec.authors       = ["Chris Oliver", "Chris Zempel"]
  spec.email         = ["excid3@gmail.com", "zempel@efeqdev.com"]
  spec.description   = %q{An email body reply parser}
  spec.summary       = %q{Email reply parser that strips out HTML tags and returns only the reply portion of an email}
  spec.homepage      = "http://github.com/excid3/reply_parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "guard", "~> 2.2.2"
  spec.add_development_dependency "guard-rspec", "~> 4.0.3"

  spec.add_dependency "actionpack", "~> 4.0.0"
  spec.add_dependency "activesupport", "~> 4.0.0"
end
