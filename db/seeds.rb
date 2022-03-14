# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content")
end
puts "50 posts have been created"

10.times do |audit_log|
    AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days), overtime_request: 1.5)
end
puts "10 audit logs have been created"