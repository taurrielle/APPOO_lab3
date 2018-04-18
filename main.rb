require_relative 'user'
require_relative 'AdminUser'
require 'pry'
require 'rubygems'
require 'active_support/all'

user = User.new("user@email.com")
user.set_data("simple user", Time.now)

admin = User.new("admin@email.com")
admin.set_data("editor", 2.days.ago)

@user_database = [user, admin]

@user_database.each do |user|
  puts "#{user.email} last signed in on #{user.get_data[:last_signed_in]}"
end
