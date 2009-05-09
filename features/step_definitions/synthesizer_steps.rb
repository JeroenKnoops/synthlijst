Given /^I have synthesizers titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Synthesizer.create(:title => title)
  end
end