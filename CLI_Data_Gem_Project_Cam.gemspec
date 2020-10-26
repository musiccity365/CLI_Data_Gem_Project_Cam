require_relative 'lib/CLI_Data_Gem_Project_Cam/version'

Gem::Specification.new do |spec|
  spec.name          = "CLI_Data_Gem_Project_Cam"
  spec.version       = CLIDataGemProjectCam::VERSION
  spec.authors       = ["clone18476"]
  spec.email         = ["cameroncousins18@gmail.com"]

  spec.summary       = "My Anime Finder gem."
  spec.description   = "This is simple gem that only goes one layer deep into finding a list of anime based on an inputed genre."
  spec.homepage      = "https://github.com/clone18476/CLI_Data_Gem_Project_Cam"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/clone18476/CLI_Data_Gem_Project_Cam"
  spec.metadata["changelog_uri"] = "https://github.com/clone18476/CLI_Data_Gem_Project_Cam."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
