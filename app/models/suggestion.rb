class Suggestion
  include Mongoid::Document
  field :title, :type => String
  field :body, :type => String
  embeds_many :votes
end
