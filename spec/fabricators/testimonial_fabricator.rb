Fabricator(:testimonial) do
  body { Faker::Lorem.paragraph(1) }
  client { Faker::Name.name }
  user
end