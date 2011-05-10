Then /^I should see a fortune$/ do
	fortune = page.find(".fortune")
	fortune.text.should match /^\n.*\n\s*$/
end

Then /^I should see the fortune "([^""]*)"$/ do |text|
	fortune = page.find(".fortune")
	fortune.text.should match (/#{text}/)
end