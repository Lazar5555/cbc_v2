class Article < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :has_categories
  has_many :categories, through: :has_categories

  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { minimum: 20}
  before_create :set_visits_count
  after_create :set_categories
  #validates :username, format: { with: /regex/} Validating with regular expressions

  has_attached_file :cover, styles: {medium: "1280x720", thumb: "800x600", mini: "400x200"}
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  #Custom setter
  def categories=(value)
    @categories = value
  end

  def update_visits_count
    #self.save if self.visits_count.nil?
    self.update(visits_count: self.visits_count + 1)
  end

  private
  def set_categories
    @categories.each do |category_id|
      HasCategory.create(category_id: category_id, article_id: self.id)
    end
  end

  def set_visits_count
    self.visits_count = 0
  end

end
