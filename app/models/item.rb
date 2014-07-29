class Item < ActiveRecord::Base
  validates :title,presence: true
  validates :sn,presence: true
  validates :name,presence: true
  validates :year,presence: true
  has_attached_file :photo, :styles => { :medium => "430x430>", :thumb => "250x250>" }, :default_url => "/images/:style/missing.png"
  validates :photo, :attachment_presence => true
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  belongs_to :brand,counter_cache: true
end
