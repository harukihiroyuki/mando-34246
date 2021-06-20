class Item < ApplicationRecord
 extend ActiveHash::Associations::ActiveRecordExtensions
 belongs_to :category
 belongs_to :user
 has_one_attached :image
 belongs_to :item_condition
 belongs_to :country
 belongs_to :nation
 has_many :comments
 
 

 with_options presence: true do
  validates :text
  validates :name
  validates :image
  validates :city
end

 validates :category_id, :item_condition_id, :country_id, :nation_id, numericality:{other_than:1}


end
