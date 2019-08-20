Then(/^Join existing server$/) do
    @pages.home.serverDiscoveryButton.click
end

When (/^I search for (.*) server$/) do |server_name|     
    @pages.home.serverSearch.send_keys(server_name)   
    @pages.home.serverSearch.send_keys(:enter) 
    sleep 2 
end

And (/^I press view$/) do
    @pages.home.firstServer.visible?
    @pages.home.firstServer.click 
    sleep 1 
end

Then (/^I join the server$/) do
    @pages.home.joinServer.visible?
    @pages.home.joinServer.click
end

