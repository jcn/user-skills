# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5000.times do
  user = User.create(email: Faker::Internet.email, name: Faker::Name.name) rescue nil
  puts user.email
end

100.times do
  skill = Skill.create(name: Faker::Construction.subcontract_category) rescue nil
  puts skill.name
end

User.all.each do |user|
  skills = Skill.order("RANDOM()")
  
  rand(10).times do |i|
    user.user_skills.create(skill: skills[i], years_experience: rand(1..40))
  end

  puts "added skills for #{user.email}"
end
