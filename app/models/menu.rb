# == Schema Information
#
# Table name: menus
#
#  id          :bigint(8)        not null, primary key
#  food_name   :string(255)      not null
#  price       :decimal(8, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint(8)
#

class Menu < ApplicationRecord
    has_and_belongs_to_many :categories
    has_many :order_items
    
    has_one_attached :image
end
