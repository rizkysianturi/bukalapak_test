require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given('open the website') do
  driver.navigate.to "https://www.bukalapak.com"
  driver.manage.window.maximize
end

Then('user search product') do
  driver.find_element(:id, 'v-omnisearch__input').send_keys('baju lebaran')
  driver.action.send_keys(:enter).perform
end

Then('user closing the browser') do
  sleep(5)
end