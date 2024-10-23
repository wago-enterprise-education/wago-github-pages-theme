# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "wago-howto-theme"
  spec.version       = "0.1.0"
  spec.authors       = ["Andre Alexander Bell"]
  spec.email         = ["github@andre-bell.de"]

  spec.summary       = "This is a basic theme for HowTos provided by WAGO on Github."
  spec.homepage      = "https://andrebell.github.com/wago-howto-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE.txt|README.md)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.15"
  spec.add_runtime_dependency "jekyll-relative-links", "~> 0.6"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
end
