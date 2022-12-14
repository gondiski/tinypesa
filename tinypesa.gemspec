require_relative 'lib/tinypesa/version'

Gem::Specification.new do |spec|
  spec.name          = "tinypesa"
  spec.version       = Tinypesa::VERSION
  spec.authors       = ["Enoch Otieno"]
  spec.email         = ["enochotieno@rocketmail.com"]

  spec.summary       = %q{Make quick payments using Tinypesa's API.}
  spec.description   = %q{This Tinypesa gem allows you to receive payments by using a username for your business and asking the client to make a payment using an STK push prompt.}
  spec.homepage      = "https://tinypesa.com/developers/docs/1.0/overview"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/gondiski/tinypesa"
  spec.metadata["changelog_uri"] = "https://github.com/gondiski/changelog.md"
  spec.add_development_dependency "rspec","~> 3.2"
  spec.add_dependency "httparty"
  spec.add_dependency "dotenv"
  spec.post_install_message = "Power up your payments!"
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
