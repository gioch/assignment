## Users
(1..10).each do |n|
  User.create(name: Faker::Name.name, email: "usere#{n}mail@gmail.com")
end

## Issues

STATUSES = ['pending', 'resolved', 'open'].freeze

(1..20).each do |n|
  reporter = User.order('RANDOM()').limit(1).first
  assignee = User.where.not(id: reporter.id).order('RANDOM()').limit(1).first

  Issue.create(
    assignee: assignee,
    reporter: reporter,
    status: STATUSES.sample,
    summary: Faker::Lorem.paragraph(5)
  )
end