10.times do
  Candidate.create(name: Faker::Name.name, email: Faker::Internet.email,
    password: 'Asdf123')
end

1.times do
  Survey.create(name: Faker::Commerce.department)
end

10.times do
  Survey.first.questions.create(inquiry: 'Test question?')
end

Candidate.create(name: 'Ben', email: 'ben@example.com', password: 'Asdf123')
