class Feature
  include Mongoid::Document
  field :body, :type => String
  embedded_in :suggestion, :inverse_of => :features
end
