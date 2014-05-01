require 'selenium-webdriver'
require 'pry'
require 'pry-debugger'

describe 'Login' do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
  end

  after(:each) do
    @driver.quit
  end

  it 'succeeded' do
    # Go to a specified URL
    @driver.get 'http://rubyonrailstutor.com'
    # Locating Elements
    # By ID
    @driver.find_element(id: 'learnmore').click
    sleep(1)
    @driver.find_element(id: 'firstName').send_keys 'Mohammed'
    @driver.find_element(id: 'lastName').send_keys "Amin"
    @driver.find_element(id: 'email').send_keys "amnmhmd@gmail.com"
    expect(@driver.find_element(id: 'join').displayed?).to be(true)
    # By Class Name
    close = @driver.find_element(:class, 'close-reveal-modal').click
    close
  end
  # By Link Text
  it 'curriculum' do
    @driver.get 'http://rubyonrailstutor.com'
    element = @driver.find_element(:link, 'curriculum')
    sleep(3)
    binding.pry
    @driver.selectWindow("Learn Ruby on Rails – Learn to build a Ruby on Rails Application.")
    @driver.windowFocus();
    #expect(@driver.find_element(:class, 'site-description-animated-fadeIn').dispayed?).to be (true)
  end

end