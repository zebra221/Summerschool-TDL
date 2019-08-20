require_relative '../../features/pages/base'
# Home page class
class HomePage < BasePage
  attr_accessor :homeButton, :friendsTab, :friendTag, :voiceCallButton
  attr_accessor :chatMessageInput, :leaveCallButton, :userSettings, :logOutButton
  attr_accessor :serverDiscoveryButton, :serverSearch, :firstServer, :joinServer

  def initialize
    @friendsTab = Element.new(:xpath,"//div[text()='Friends']")

    @friendTag = Element.new(:css,"[aria-label='Kristers K']")
    
    @leaveCallButton = Element.new(:xpath,"//*[text()='Leave Call']")
    
    @logOutButton = Element.new(:xpath,"//div[text()='Log Out']")
    
    @logOutConfirm = Element.new(:xpath,"//button/div[text()='Log Out']")
    
    @homeButton = Element.new(:css,"[aria-label='Home']")
    
    @voiceCallButton = Element.new(:css,"[aria-label='Start Voice Call']")
    
    @chatMessageInput = Element.new(:css,"textarea:first-of-type")
    
    @userSettings = Element.new(:css,"[aria-label='User Settings']")

    @serverDiscoveryButton = Element.new(:css,"[name='Search']")
    @serverSearch = Element.new(:css,"[aria-label='Search popular servers']")
    @firstServer = Element.new(:xpath,"(//div[starts-with(@class, 'splash')])[1]")
    @joinServer = Element.new(:xpath, "(//button[starts-with(@class, 'button')])[7]")


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