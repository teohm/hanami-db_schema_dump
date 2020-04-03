# hanami-db_schema_dump

A Hanami [command-line plugin](https://guides.hanamirb.org/command-line/plugins/) that dumps your PostgreSQL
development database schema into `db/schema.sql` after `hanami db migrate` is executed.

## Installation

In your Gemfile:

```ruby
group :plugins do
  gem "hanami-database-schema_dump"
end
```

And then execute:

```sh
bundle install
```

## Usage

To update `db/schema.sql`, run:

```sh
bundle exec hanami db migrate
```

Note: This only happens when `HANAMI_ENV` is set to `development`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hanami-database-schema_dump. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/hanami-database-schema_dump/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hanami::Database::SchemaDump project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hanami-database-schema_dump/blob/master/CODE_OF_CONDUCT.md).
