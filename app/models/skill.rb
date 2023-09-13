# == Schema Information
#
# Table name: skills
#
#  id   :integer          not null, primary key
#  name :string           not null
#
class Skill < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
