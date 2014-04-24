require 'selenium-webdriver'

describe 'Login' do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
  end

  after(:each) do
    @driver.quit
  end

  it 'succeeded' do
    @driver.get 'http://rubyonrailstutor.com'
    @driver.find_element(id: 'learnmore').click

    # expect(@driver.find_element(By.cssSelector(".reveal-modal.medium.open"))).to be(true)
    expect(@driver.find_element(id: 'join').displayed?).to be(true)
    # wait = Selenium::WebDriver::Wait.new(:timeout => 2)
    # wait.until { driver.find_element(:id => "join")}
    # @driver.find_element(id: 'username').send_keys('tomsmith')
    # @driver.find_element(id: 'password').send_keys('SuperSecretPassword!')
    # @driver.find_element(id: 'login').submit




  end

end
