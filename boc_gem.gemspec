# frozen_string_literal: true

require_relative "lib/boc_gem/version"

Gem::Specification.new do |spec|
  spec.name = "boc_gem"
  spec.version = BocGem::VERSION
  spec.authors = ["David Besonen"]
  spec.email = ["david.besonen139@gmail.com"]

  spec.summary = "The boc_gem is a simple gem that provides a variety of convenience methods that are designed to optimize our standard workflows."
  spec.description = "The boc_gem is a simple gem that provides a variety of convenience methods that are designed to optimize our standard workflows. The gem includes a CLI that allows us to create views for a given controller, generate a migration file, and generate a model file."
  spec.homepage = "https://github.com/davidbesonen/boc_gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/davidbesonen/boc_gem"
  spec.metadata["changelog_uri"] = "https://github.com/davidbesonen/boc_gem/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.executables << 'boc_gem'
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "thor", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

# Gem::Specification.new do |spec|
#   spec.name = "boc_gem"
#   spec.version = BocGem::VERSION
#   spec.authors = ["David Besonen"]
#   spec.email = ["david.besonen139@gmail.com"]
  
#   spec.summary = "The boc_gem is a simple gem that provides a variety of convenience methods that are designed to optimize our standard workflows."
#   spec.description = "The boc_gem is a simple gem that provides a variety of convenience methods that are designed to optimize our standard workflows. The gem includes a CLI that allows us to create views for a given controller, generate a migration file, and generate a model file."
#   spec.homepage = "https://github.com/davidbesonen/boc_gem"
#   spec.license = "MIT"
#   spec.required_ruby_version = ">= 3.0.0"

#   spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

#   spec.metadata["homepage_uri"] = spec.homepage
#   spec.metadata["source_code_uri"] = "https://github.com/davidbesonen/boc_gem"
#   spec.metadata["changelog_uri"] = "https://github.com/davidbesonen/boc_gem/blob/main/CHANGELOG.md"

#   # Specify which files should be added to the gem when it is released.
#   # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
#   spec.files = Dir.glob("**/*").reject do |f|
#     f == __FILE__ || f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
#   end
#   spec.bindir = "exe"
#   spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
#   spec.executables << 'boc_gem'
#   spec.require_paths = ["lib"]

#   # Uncomment to register a new dependency of your gem
#   # spec.add_dependency "example-gem", "~> 1.0"
#   spec.add_dependency "thor", "~> 1.0"

#   # For more information and examples about making a new gem, check out our
#   # guide at: https://bundler.io/guides/creating_gem.html
# end
