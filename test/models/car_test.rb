# == Schema Information
#
# Table name: cars
#
#  id            :integer          not null, primary key
#  make          :string(255)
#  model         :string(255)
#  year          :string(255)
#  colour        :string(255)
#  body_type     :string(255)
#  engine        :string(255)
#  transmisison  :string(255)
#  wheels_tyres  :string(255)
#  other_details :string(255)
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
