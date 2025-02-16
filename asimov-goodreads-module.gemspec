Gem::Specification.new do |gem|
  gem.version            = File.read("VERSION").chomp
  gem.date               = File.mtime("VERSION").strftime("%Y-%m-%d")

  gem.name               = "asimov-goodreads-module"
  gem.homepage           = "https://github.com/asimov-modules/asimov-goodreads-module"
  gem.license            = "Unlicense"
  gem.summary            = "ASIMOV Goodreads Module"
  gem.description        = ""
  gem.metadata           = {
    "homepage_uri"      => gem.homepage,
    "bug_tracker_uri"   => "https://github.com/asimov-modules/asimov-goodreads-module/issues",
    "changelog_uri"     => "https://github.com/asimov-modules/asimov-goodreads-module/blob/master/CHANGES.md",
    "documentation_uri" => "https://github.com/asimov-modules/asimov-goodreads-module",
    "source_code_uri"   => "https://github.com/asimov-modules/asimov-goodreads-module",
  }

  gem.author             = "ASIMOV Protocol"
  gem.email              = "support@asimov.so"

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS CHANGES.md README.md UNLICENSE VERSION) + Dir.glob("bin/*")
  gem.bindir             = %q(bin)
  gem.executables        = Dir.glob("bin/*").map { |f| File.basename(f) }

  gem.required_ruby_version = ">= 3.2"
  gem.add_development_dependency "rake", ">= 13"
  gem.add_runtime_dependency     "asimov-module", ">= 25.0.0.dev"
  gem.add_runtime_dependency     "know"
end
