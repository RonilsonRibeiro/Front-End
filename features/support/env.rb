require 'rspec'
require 'cucumber'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'pry'
require 'site_prism'
require 'faker'


include Capybara::DSL

ENVIRONMENT = (YAML.load_file('./features/config/environment.yml'))
ADDRESS = (YAML.load_file('./features/fixtures/address.yml'))

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
	config.current_driver = :selenium
	config.default_max_wait_time = 20
	Capybara.page.driver.browser.manage.window.maximize
end

