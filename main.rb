require_relative 'user'
require_relative 'AdminUser'
require 'pry'

user = User.new("user@email.com")
user.data = {type: "simple user", last_signed_in: Time.now}

admin = User.new("admin@email.com")
admin.data = [type: "editor", last_signed_in: Time.now]

@user_database = [user, admin]

@user_database.each do |user|
  puts "#{user.email} last signed in on #{user.data[:last_signed_in]}"
end
