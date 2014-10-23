require 'pry'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'ngrok/tunnel'
require 'ngrok/rspec'


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.include Capybara::DSL

  Capybara.server_port = 3001
  config.include Ngrok::Rspec

  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app,
      :phantomjs_options => ['--debug=no', '--load-images=no', '--ignore-ssl-errors=yes', '--ssl-protocol=any'], :debug => false)
  end

  NGROK_SPEC_DEBUG = ENV['NGROK_SPEC_DEBUG'] || false
  if NGROK_SPEC_DEBUG
    Capybara.default_driver = :selenium
  else
    Capybara.default_driver = :selenium #:poltergeist 
    Capybara.javascript_driver = :selenium #:poltergeist
  end




end
