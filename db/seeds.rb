# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(id: 224, email: 'sophie@soph.com', password_digest: 'secret')
User.create(id: 225, email: 'shoap@soph.com', password_digest: 'secret')
User.create(id: 226, email: 'soapahdoe@soph.com', password_digest: 'secret')
User.create(id: 227, email: 'shoapiesue@soph.com', password_digest: 'secret')
User.create(id: 229, email: 'littlebigmouth@soph.com', password_digest: 'secret')
Left.create(id: 10, user_id: 224, duration: 2, start: nil, end: nil)
Left.create(id: 11, user_id: 224, duration: 6, start: nil, end: nil)
Left.create(id: 12, user_id: 224, duration: 5, start: nil, end: nil)

Left.create(id: 13, user_id: 226, duration: 4, start: nil, end: nil)
Left.create(id: 14, user_id: 226, duration: 7, start: nil, end: nil)
Left.create(id: 15, user_id: 226, duration: 6, start: nil, end: nil)

