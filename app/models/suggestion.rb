class Suggestion
  include Mongoid::Document
  field :title, :type => String
  field :body, :type => String
  field :slug, :type => String
  embeds_many :votes
  
  #index :votes_difference
  
  validates_presence_of :title, :body
  validates_uniqueness_of :title, :slug
  
  before_create :generate_slug
  
  def votes_difference # virtual attribute, calculated dynamically
    # find_all is a ruby method to filter array
    self.votes.find_all{|vote| vote.value == true}.count - self.votes.find_all{|vote| vote.value == false}.count
    # TODO doesn't this fire up too many database calls?
  end
  
  def to_param
    slug
  end

  private
  def generate_slug
    self.slug = title.parameterize # TODO validate uniqueness
  end
end
