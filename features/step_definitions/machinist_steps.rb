# FIXME using these steps only until I make Pickle work with mongoid

Given /^a suggestion exists$/ do |title|
  Suggestion.make()
end

Given /^a suggestion with title "(.*)" exists$/ do |title|
  Suggestion.make(:title => title)
end
