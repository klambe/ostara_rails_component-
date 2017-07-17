# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Event.create(category:'Site Events', sub_category1:'Christmas',  year:'2016', approval:true)
# Event.create(category:'Site Events', sub_category1:'Christmas',  year:'2016', approval:true)
# Event.create(category:'Site Events', sub_category1:'Thanksgiving', year:'2016', approval:true)
# Event.create(category:'Site Events', sub_category1:'Bring Kids to Work', year:'2016', approval:true)
# Event.create(category:'Site Events', sub_category1:'Interns', year:'2016', approval:true)
# Event.create(category:'Site Events', sub_category1:'Corporate Events', year:'2016', approval:true)
# Event.create(category:'Site Events', sub_category1:'Meet Ups', year:'2016', approval:true)
# Event.create(category:'Site Events', sub_category1:'Halloween', year:'2016', approval:true)
# Event.create(category:'Everyday Office', sub_category1:'Games Room', year:'2016', approval:true)
# Event.create(category:'Everyday Office', sub_category1:'Theming', year:'2016', approval:true)
# Event.create(category:'Everyday Office', sub_category1:'Birthdays', year:'2016', approval:true)
# Event.create(category:'Culture & CAs', sub_category1:'Beer Bashes', year:'2016', approval:true)
# Event.create(category:'Culture & CAs', sub_category1:'Sports', year:'2016', approval:true)
# Event.create(category:'Culture & CAs', sub_category1:'Games', year:'2016', approval:true)
# Event.create(category:'Culture & CAs', sub_category1:'Quizzes', year:'2016', approval:true)
# Event.create(category:'Culture & CAs', sub_category1:'Photo Competition', year:'2016', approval:true)
# Event.create(category:'Volunteering & CSR', sub_category1:'Charity Work', year:'2016', approval:true)
# Event.create(category:'Volunteering & CSR', sub_category1:'Monster Help Day', year:'2016', approval:true)
# Event.create(category:'Sports & Social', sub_category1:'Weekends Away', year:'2016', approval:true)
# Event.create(category:'Sports & Social', sub_category1:'Food Events', year:'2016', approval:true)
# Event.create(category:'Sports & Social', sub_category1:'Sports & Activities', year:'2016', approval:true)
# Event.create(category:'Sports & Social', sub_category1:'Misc.', year:'2016', approval:true)

5.times do
  # Event.create({
  #                  title: Faker::Book.title,
  #                  category: Faker::Book.genre,
  #                  sub_category1: Faker::Book.genre,
  #                  year: Faker::Lorem.word,
  #                  month:Faker::Lorem.word,
  #                  approval: true,
  #
  #              })

  MediaFile.create({
                       filename: Faker::Book.genre,
                       s3_location: Faker::Team.creature,
                       approval: true,
                       flagged: true,
                       Event_id: 3, #common sense but event must exist
               })
end