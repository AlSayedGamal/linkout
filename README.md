# Linkout

Welcome to your linkout gem! Since linkedin no more allows normal developers to have access to full profile.
linkout is the gem used to allow you to scrap linkedin profile pages freely.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'linkout'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install linkout

## Usage

```ruby
require 'linkout'
profile = Linkout.new "https://linkedin.com/in/some-profile"
puts profile.name  #=> "Some name"
puts profile.basic_info[:current_title]  #=> "Some title"
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/linkout.

