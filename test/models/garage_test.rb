# == Schema Information
#
# Table name: garages
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  theme      :string(255)
#  details    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class GarageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
