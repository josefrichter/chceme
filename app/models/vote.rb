class Vote
  include Mongoid::Document
  field :value, :type => Boolean
  
  #embedded_in :votable, :inverse_of => :votes 
  #belongs_to_related :votable, :polymorphic => true
  belongs_to_related :suggestion
  belongs_to_related :feature
  
  # By default, all embedded_in associations are polymorphic. No matter what name you provide to the macro it will always return the parent object.
  # see http://mongoid.org/docs/associations/
end
