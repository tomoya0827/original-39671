class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :target_age

  validates :image, presence: true
  validates :explanatory_text, presence: true
  validates :target_age_id, numericality: { other_than: 1 , message: "can't be blank"} 
end
