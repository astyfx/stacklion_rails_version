class Question < ActiveRecord::Base
  belongs_to :user

  has_many :vote

  has_and_belongs_to_many :tags
  has_many :questions_tags
end
