# == Schema Information
#
# Table name: customers
#
#  id             :bigint(8)        not null, primary key
#  name           :string(255)
#  address        :text(65535)
#  email          :string(255)
#  contact_number :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Customer < ApplicationRecord
    has_many :orders
    
    validates :name, presence: true, uniqueness: true
    
end
