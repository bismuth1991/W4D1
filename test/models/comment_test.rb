# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  viewer_id  :integer          not null
#  artwork_id :integer          not null
#  body       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
