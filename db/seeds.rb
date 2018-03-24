10.times do
  Candidate.create(name: Faker::Name.name, email: Faker::Internet.email,
    password: 'Asdf123')
end
