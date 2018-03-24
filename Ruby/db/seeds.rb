10.times do
  Candidate.create(name: Faker::Name.name, email: Faker::Internet.email,
    password: 'Asdf123')
end

3.times do
  Survey.create(name: Faker::Commerce.department)
end 
