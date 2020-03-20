class Topic < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :follows, as: :followable
end
