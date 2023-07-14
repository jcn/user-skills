class User < ApplicationRecord
  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills

  validates :email, presence: true, uniqueness: true

  def max_years_experience
    nil
  end
end
