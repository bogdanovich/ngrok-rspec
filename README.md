# Ngrok::Rspec

Ngrok-rspec gem allows you to run capybara specs through ngrok.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test do
  gem 'ngrok-rspec'
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ngrok-rspec

## Usage

Configure rspec
```ruby
RSpec.configure do |config|

  Capybara.server_port = 3001   # any port can be used
  config.include Ngrok::Rspec
end
```

Write specs using filter ngrok: true

```ruby
context "Using ngrok", ngrok: true do
  it "should process paypal payment" do
    # test your sanbox paypal payment for example
  end
end
```



## Contributing

1. Fork it ( https://github.com/[my-github-username]/ngrok-rspec/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
