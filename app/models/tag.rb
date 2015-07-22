class Tag < ActiveRecord::Base
  has_and_belongs_to_many :questions
  has_many :questions_tags
end
