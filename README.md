# JwPlayerRails
Adds JwPlayer 7 to rails asset pipeline and provides helper methods to include library and initialize the player.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jw_player_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jw_player_rails

## Usage

To include assets on page use
```ruby
  <%= jwplayer_assets %>
```
To initialize the player use
```ruby
  <%= jwplayer({
    file: "http://example.com/myVideo.mp4",
    height: 360,
    width: 640,
    advertising: {
      client: "vast",
      tag: "http://adserver.com/vastTag.xml"
    }
  }) %>
```

## Development
Run `rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/atinder90/jw_player_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

