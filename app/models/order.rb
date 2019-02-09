# == Schema Information
#
# Table name: orders
#
#  id            :bigint(8)        not null, primary key
#  ordering_date :date
#  customer_id   :bigint(8)
#  remark        :text(65535)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :customer 
  
  has_many :order_items
  has_many :menu,  through: :order_items 
  
  validates :customer, presence: true
  
end
