class Suggestion
  include Mongoid::Document
  #include ActiveModel::Validations
  
  field :title, :type => String
  field :body, :type => String
  field :slug, :type => String
  
  embeds_many :votes # TODO should use has_many_related for votes. changes to controllers needed then
  #has_many_related :votes
  embeds_many :features
  
  #index :votes_difference
  #attr_accessor :slug
  
  validates_presence_of :title, :body
  validates_uniqueness_of :title, :slug
  
  #before_create :generate_slug
  #before_validation :generate_slug, :on => :create
  
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
    self.slug = title.parameterize unless title.nil? # TODO validate uniqueness
  end
end
