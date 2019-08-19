require_relative '../../features/pages/base'
# Home page class
class HomePage < BasePage
  attr_accessor :homeButton, :friendsTab, :friendTag, :voiceCallButton
  attr_accessor :chatMessageInput, :leaveCallButton, :userSettings, :logOutButton

  def initialize
    @friendsTab = Element.new(:xpath,"//div[text()='Friends']")

    @friendTag = Element.new(:xpath,"//span[text()='#']")
    
    @leaveCallButton = Element.new(:xpath,"//*[text()='Leave Call']")
    
    @logOutButton = Element.new(:xpath,"//div[text()='Log Out']")
    
    @logOutConfirm = Element.new(:xpath,"//button/div[text()='Log Out']")
    
    @homeButton = Element.new(:css,"[aria-label='Home']")
    
    @voiceCallButton = Element.new(:css,"[aria-label='Start Voice Call']")
    
    @chatMessageInput = Element.new(:css,"textarea:first-of-type")
    
    @userSettings = Element.new(:css,"[aria-label='User Settings']")
  end

  def fill_form(user)
    @email.visible?
    @email.click
    @email.send_keys user['email']
    @password.click
    @password.send_keys user['password']
    @loginButton.click
  end

  def load_home_page
    visit ''
  end
end