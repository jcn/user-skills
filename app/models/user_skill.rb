# == Schema Information
#
# Table name: user_skills
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  skill_id         :integer
#  years_experience :integer
#
class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill
end
