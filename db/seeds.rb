# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Experience.destroy_all
User.destroy_all

puts "Creating Users"

user1 = User.create!(email: "borja@test.com", password: "123123")
user2 = User.create!(email: "beatriz@test.com", password: "123123")
puts "Finish Creating Users"

puts "Making Experiences"

Experience.create!(title: "The Crying Game", address: "Hoxton Square", description: "Visit the apartament and pub where Dil and Fergus meet in Neil Jordan's 1992 Oscar winning film.", price: "14.99", rating: 6.9, user: user1)
Experience.create!(title: "Mission: Impossible - Fallout", address: "Blackfriars Railway Bridge", description: "Visit the location of one of the most thrilling scenes in the last installment of the Mission: Imposssible franchise.", price: "£7.99", rating: 8, user: user1)
Experience.create!(title: "The Foreigner", address: "Old Royal Naval College", description: "Visit this historical location in Greenwich where many movies and TV shows have been filmed, including this action-packed movie with Jackie Chan and Pierce Brosnan.", price: "15.00", rating: 9.5, user: user2)
Experience.create!(title: "Harry Potter and the Half-Blood Prince", address: "St. Paul's Cathedral", description: "Don't miss one of the most famous spots in London, also present in the London scenes of the Harry Potter franchise.", price: "14.99", rating: 8.3, user: user2)
Experience.create!(title: "Four Weddings and a Funeral", address: "South Bank", description: "Wander along South Bank like Hugh Grant's character before having a marital meltdown at St Bartholomew the Great’s church.", price: "11.99", rating: 5.5, user: user1)
Experience.create!(title: "Breaking & Entering", address: "South Hampstead", description: "You can find the London film location for Amira’s flat on Rowley Way in South Hampstead.", price: "17.99", rating: 6.5, user: user1)
Experience.create!(title: "Bridget Jones's Diary", address: "Borough Market", description: "Bridget’s flat is fictionally above the Globe Tavern, a traditional corner pub on Bedale Street in Borough Market.", price: "12.99", rating: 7.6, user: user2)
Experience.create!(title: "Shaun of the Dead", address: "New Cross", description: "The scenes in the pub, The Winchester, were actually filmed at the Duke of Albany in New Cross", price: "10.00", rating: 4.5, user: user2)
Experience.create!(title: "Rocketman", address: "Tottenham Court Road", description: "Regency Cafe had its tables and chairs changed for the film to look like the old Lancaster Grill, where Elton John and Bernie Taupin met for the first time in real life.", price: "14.99", rating: 8.5, user: user1)
Experience.create!(title: "28 Days Later", address: "Westminster Bridge", description: "Spot protagonist Jim walk across a deserted Westminster Bridge towards Big Ben and the Houses of Parliament in this classic post-apocalyptic movie.", price: "13.55", rating: 7.2, user: user1)

puts "Finish Making Experiences"
