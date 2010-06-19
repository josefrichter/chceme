class Vote
  include Mongoid::Document
  field :value, :type => Boolean
  embedded_in :suggestion, :inverse_of => :votes
end
