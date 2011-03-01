Given /^I have no downloads$/ do
  Download.delete_all
end

Given /^I (only )?have downloads titled "?([^\"]*)"?$/ do |only, titles|
  Download.delete_all if only
  titles.split(', ').each do |title|
    Download.create(:title => title)
  end
end

Then /^I should have ([0-9]+) downloads?$/ do |count|
  Download.count.should == count.to_i
end
