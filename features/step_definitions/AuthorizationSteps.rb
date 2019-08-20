Given(/^I am on Discord login page$/) do
  @pages.login.load_home_page
end

And(/^I login as (.*)$/) do |user|
  file = YAML.load_file('config/test_data.yml')
  case user
  when 'user1' then
    $user_manager.current_user = 'user1'
    @pages.login.fill_form(file['user1'])
    sleep 5
  else
    raise 'Login is not correct!'
  end
end

And(/^I click on skip the tutorial$/) do
  if page.should have_selector(:xpath, "//*[text()='Skip']")
    @pages.login.skipButton.click
  else
    break
    puts 'Skip button is invisible'
  end
end


Then (/^I see that login was successful$/)do
  @pages.home.homeButton.visible?
  @pages.home.friendsTab.visible?
  @pages.home.userSettings.visible?

end

And (/^I log out from Discord App$/) do
  @pages.login.userSettings.click
  @pages.login.logOutButton.click
  @pages.login.logOutConfirm.click
  @pages.login.email.visible?
  @pages.login.loginButton.visible?
end

