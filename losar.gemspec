# frozen_string_literal: true

require_relative "lib//version"

Gem::Specification.new do |spec|
  spec.name = ""
  spec.version = VERSION
  spec.authors = ["bugloper"]
  spec.email = ["bugloper@gmail.com"]

  spec.summary = ", Blessed Rainy Day is one hell of gem in Bhutan."
  spec.description = " is the Bhutanese New Year, and this gem is dedicated to spreading joy and celebration. It includes information about the traditions of  and Blessed Rainy Day in Bhutan. Wishing  Tashi Delek to everyone!"
  spec.homepage = "https://github.com/bugloper/"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bugloper/"
  spec.metadata["changelog_uri"] = "https://github.com/bugloper//blob/main/CHANGELOG.md"

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.metadata["rubygems_mfa_required"] = "true"
end
