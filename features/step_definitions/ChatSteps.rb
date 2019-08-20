And (/^I Send a Chat Message with text (.*)$/) do |text_message|
    @pages.home.chatMessageInput.send_keys(text_message)
    @pages.home.chatMessageInput.send_keys(:enter)
end

And (/^I Start a New Chat$/) do 
    @pages.home.friendsTab.click
    @pages.home.friendTag.visible?
    @pages.home.friendTag.click
    
end

Then (/^I clean the direct message list$/) do
    @pages.home.friendsTab.click
    page.all(:xpath, "//button[starts-with(@class, 'close')]").each do |closeButton|
        find(:xpath, "//span[starts-with(@class, 'name')]").hover
        find(:xpath, "//button[starts-with(@class, 'close')]").click
        sleep 1
    end
end 