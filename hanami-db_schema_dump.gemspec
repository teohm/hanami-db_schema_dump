require_relative 'lib/hanami/db_schema_dump/version'

Gem::Specification.new do |spec|
  spec.name          = "hanami-db_schema_dump"
  spec.version       = Hanami::DbSchemaDump::VERSION
  spec.authors       = ["Huiming Teo"]
  spec.email         = ["teohuiming@gmail.com"]

  spec.summary       = %q{Hanami command-line plugin that dumps PostgreSQL db schema into `db/schema.sql`.}
  spec.description   = %q{This Hanami command-line plugin dumps your PostgreSQL development database schema
    into `db/schema.sql` after `hanami db migrate` is executed.}
  spec.homepage      = "http://github.com/teohm/hanami-db_schema_dump"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/teohm/hanami-db_schema_dump"
  spec.metadata["changelog_uri"] = "https://github.com/teohm/hanami-db_schema_dump/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
