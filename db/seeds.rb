# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |n|
  User.create!(
    name:                  "企業#{n + 1}",
    email:                 "employer#{n + 1}@test.com",
    password:              "password",
    password_confirmation: "password",
    type:                  "Employer"
  )
end

3.times do |n|
  User.create!(
    name:                  "求職者#{n + 1}",
    email:                 "employee#{n + 1}@test.com",
    password:              "password",
    password_confirmation: "password",
    type:                  "Employee"
  )
end

3.times do |n|
  Employer.all.each do |employer|
    employer.jobs.create!(
      title:   "タイトル#{n + 1}",
      content: "テキストテキストテキストテキスト#{n + 1}"
    )
  end
end

Employer.create!(
  name:                  "企業(admin)",
  email:                 "employer_admin@test.com",
  password:              "password",
  password_confirmation: "password",
  admin:                 true
)

Employee.create!(
  name:                  "求職者(admin)",
  email:                 "employee_admin@test.com",
  password:              "password",
  password_confirmation: "password",
  admin:                 true
)
