class Item < ApplicationRecord
 extend ActiveHash::Associations::ActiveRecordExtensions
 belongs_to :category
 belongs_to :user
 has_one_attached :image
 belongs_to :item_condition
 belongs_to :country
 has_one :buy

 with_options presence: true do
  validates :text
  validates :name
  validates :image
end

 validates :category_id, :item_condition_id, :country_id, numericality:{other_than:1}


end
