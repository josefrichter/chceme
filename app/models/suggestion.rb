class Suggestion
  include Mongoid::Document
  field :title, :type => String
  field :body, :type => String
  field :slug, :type => String
  embeds_many :votes
  
  validates_presence_of :title, :body
  validates_uniqueness_of :title
  
  before_create :generate_slug
  
  def to_param
    slug
  end

  private
  def generate_slug
    self.slug = title.parameterize # TODO validate uniqueness
  end
end
