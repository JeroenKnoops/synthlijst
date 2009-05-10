Given /^I have synthesizers titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Synthesizer.create(:title => title)
  end
end


Given /^I have no synthesizers$/ do
  Synthesizer.delete_all
end

Then /^I should have ([0-9]+) synthesizer$/ do |count|
  Synthesizer.count.should == count.to_i
end