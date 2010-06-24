require 'machinist/mongoid'
require 'sham'
require 'faker'


Sham.define do
  title { Faker::Lorem.words(5).join(' ') }
  body  { Faker::Lorem.paragraphs(3).join("\n\n") }
end

#Suggestion.blueprint do
#  title  { Sham.title }
#  body   { Sham.body }
  #votes
  #features
#end