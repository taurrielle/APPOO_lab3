require_relative 'User'
require_relative 'AdminUser'
require_relative 'Document'
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

puts "\n\n"

doc = Document.new("Title", "", user)
doc.import_in_doc("test", TxtImport.new)
puts doc.content

doc.import_in_doc("test", PdfImport.new)
puts doc.content