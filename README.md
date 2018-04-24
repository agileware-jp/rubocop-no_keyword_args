# RuboCop::NoKeywordArgs

## Installation

**Gemfile**

```ruby
group :development do
  gem 'rubocop-no_keyword_args', require: false
end
```

**.rubocop.yml**

```yaml
inherit_gem:
  rubocop-no_keyword_args: config/default.yml
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/agileware-jp/rubocop-no_keyword_args.
