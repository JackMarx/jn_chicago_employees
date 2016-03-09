# JnChicagoEmployees

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/jn_chicago_employees`. To experiment with that code, run `bin/console` for an interactive prompt.

Allows you to access City of Chicago's Public API from ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jn_chicago_employees'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jn_chicago_employees

## Usage

To get all of the City of Chicago Employees, run this code:

```ruby
employees = JnChicagoEmployees::Employee.all
```

To get all of the City of Chicago Employees with a search keyword, run this code:

```ruby
employees = JnChicagoEmployees::Employee.search('mayor')
```

Replace 'mayor' with your own search keyword.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/jn_chicago_employees/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
