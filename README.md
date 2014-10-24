# Ngrok::Rspec

Ngrok-rspec gem provides ability to run capybara specs through ngrok.

[![Gem Version](https://badge.fury.io/rb/ngrok-rspec.svg)](http://badge.fury.io/rb/ngrok-rspec)

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
  # any port can be used
  Capybara.server_port = 3001
  Ngrok::Rspec.tunnel = { port: Capybara.server_port }
  
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

```ruby
# custom tunnel options
Ngrok::Rspec.tunnel = { port: Capybara.server_port, 
                        subdomain: 'MY_SUBDOMAIN', 
                        authtoken: 'MY_TOKEN', 
                        log: 'ngrok.log', 
                        config: '~/.ngrok' }
```


## Contributing

1. Fork it ( https://github.com/bogdanovich/ngrok-rspec/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
