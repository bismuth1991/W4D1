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

class Comment < ApplicationRecord
  validates :viewer_id, :artwork_id, :body, presence: true
  
  belongs_to :viewer,
    foreign_key: :viewer_id,
    class_name: :User
    
  belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: :Artwork
  
end
