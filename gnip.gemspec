lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gnip/version"

Gem::Specification.new do |spec| 
  spec.name = "gnip"
  spec.version = Gnip::VERSION
  spec.authors = ["Tyler Morgan"]
  spec.email = ["tylermorgan86@gmail.com"]
  spec.summary = "Gnip api access"
  spec.description = "Access to various elements of the gnip api"
  spec.homepage = "https://github.com/tylermorgan86/gnip"
  spec.license = "MIT"

  spec.require_paths = ["lib"]
  spec.files =  Dir["lib/**/*"]

  spec.add_runtime_dependency "httparty", "~> 0.12"
end
