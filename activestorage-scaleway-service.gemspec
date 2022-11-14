# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activestorage/scaleway/service/version'

Gem::Specification.new do |spec|
  spec.name = "activestorage-scaleway-service"
  spec.version = Activestorage::Scaleway::Service::VERSION
  spec.authors = ["Sébastien Gaya"]
  spec.email = ["sebastien.gaya@gmail.com"]

  spec.summary = "Rails ActiveStorage adapter for Scaleway Object Storage"
  spec.homepage = "https://github.com/noesa/activestorage-scaleway-service"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/noesya/activestorage-scaleway-service"
  spec.metadata["changelog_uri"] = "https://github.com/noesya/activestorage-scaleway-service/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activestorage"
  spec.add_dependency "aws-sdk-s3"
end
