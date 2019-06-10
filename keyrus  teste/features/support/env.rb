require "selenium-webdriver"
require "capybara"
require "capybara/cucumber"
require "httparty"
#############################################################
#Firefox#
Capybara.configure do |config|
   config.default_driver  = :selenium_chrome
end

Capybara.default_max_wait_time = 10