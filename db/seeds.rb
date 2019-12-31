# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

daemon = User.new(id: 0, login_id: "daemon", password: 'password', name: 'Daemon', description: '')
daemon.save!

Admin.create(user_id: 0, permission: 15)

Tweet.create(id: 0, user_id: 1, parent_id: 0, content: 'root')