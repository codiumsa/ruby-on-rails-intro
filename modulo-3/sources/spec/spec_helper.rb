require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

RSpec.configure do |config|
  config.include Capybara::DSL
end
