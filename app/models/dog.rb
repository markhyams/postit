class Dog < ActiveRecord::Base
  validates :name, presence: true
  validates :height_in_inches, presence: true
  validates :weight_in_lbs, presence: true
end