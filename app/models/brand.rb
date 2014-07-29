class Brand < ActiveRecord::Base
  validates :name,presence: true, uniqueness: true
  validates :slug,presence: true, uniqueness: true
  scope :top,->{ order("priority asc")}
  has_many :items
  def to_param
    slug
  end
end
