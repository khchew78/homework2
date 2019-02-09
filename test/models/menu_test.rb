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

require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
