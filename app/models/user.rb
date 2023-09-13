# == Schema Information
#
# Table name: users
#
#  id    :integer          not null, primary key
#  email :string           not null
#
class User < ApplicationRecord
  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills

  validates :email, presence: true, uniqueness: true

  def max_years_experience
    nil
  end
end
