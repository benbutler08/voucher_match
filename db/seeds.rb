100.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email,
    password: 'Asdf123')
end



User.create(name: 'Ben', email: 'ben@example.com', password: 'Asdf123', admin: true)
