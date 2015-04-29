Given /the following users exist:/ do |users_table|
    users_table.hashes.each do |user|
        User.create!(user)
    end
end

When /I click the edit button for "(.*)"/ do |user_name|
    find('tr', text: user_name).click_on("Edit");
end

Then /I should manage account page for "(.*)"/ do |user|
    id = User.find_by_first_name(user).id.to_s()
    current_path.should == manage_account_page_path(id)
end

