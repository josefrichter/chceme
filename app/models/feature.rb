class Feature
  include Mongoid::Document
  field :body, :type => String
  embedded_in :suggestion, :inverse_of => :features
  #embeds_many :votes
  has_many_related :votes, :as => :votable
  
  def votes_difference # virtual attribute, calculated dynamically
    # find_all is a ruby method to filter array
    self.votes.find_all{|vote| vote.value == true}.count - self.votes.find_all{|vote| vote.value == false}.count
    # TODO doesn't this fire up too many database calls?
  end
  
end
