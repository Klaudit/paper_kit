# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paper_kit/version'

Gem::Specification.new do |spec|
  spec.name          = "paper_kit"
  spec.version       = PaperKit::VERSION
  spec.authors       = ["Tim"]
  spec.email         = ["timshingyu@gmail.com"]

  spec.summary       = %q{Paper Kit for Rails Version}
  spec.description   = %q{Paper Kit for Rails Version is a rubygems. Packed with useful rails generators to generate your rails view in no time. One more thing, it's production ready, so no need to worry about the assets pipeline issues on production server anymore.}
  spec.homepage      = "https://uiready.io/items/paper-kit-rails-version"

  spec.files = Dir["{app,lib}/**/*"].reject{ |f|
                  f['app/assets/javascripts/paper_kit/jquery-1.10.2.js'] ||
                  f['x_paper_kit_v1.2.1.zip'] } +
               Dir["*.gemspec"] +
               ["README.md"]

  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.1"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.post_install_message = <<-DOC
    Congratulation, Paper Kit for Rails Version has been installed in your local machine.

    You can now run the following generator to install Paper Kit to your rails app.

    rails generate paper_kit:install
  DOC

end
