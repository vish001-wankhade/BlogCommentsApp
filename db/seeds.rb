# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id: 1, email: "user1@gmail.com", password: "user@123#", password_confirmation: "user@123#",
            confirmed_at: "Tue, 09 Aug 2022 23:07:53 +0530"
            created_at: "Tue, 09 Aug 2022 23:07:53 +0530", updated_at: "Tue, 09 Aug 2022 23:07:53 +0530")