# Texserial

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'texserial'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install texserial

## Usage

``` shell
texserial -t <template.tex.erb> file_1.yaml [file_2.yaml [ ...]]
```

`texserial` will produce for each yaml-file a pdf.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/andibachmann/texserial.

