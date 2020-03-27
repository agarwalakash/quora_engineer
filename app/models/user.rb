class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:username]

         validates :email, uniqueness: true
		 validates :username, uniqueness: true

         has_many :topics
         has_many :questions
         has_many :answers
         has_many :follows, as: :followable
end
