# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Activity.destroy_all
RomanticDate.destroy_all

giulia = User.create(name: "giulia", hobby: "running", personality: "INTJ", sign: "Sagittarius")
amy = User.create(name: "amy", hobby: "playing with Nugget", personality: "INFJ", sign: "Cancer")
melinda = User.create(name: "melinda", hobby: "walking", personality: "INTJ", sign: "Libra")
anney = User.create(name: "anney", hobby: "photography", personality: "ENFJ", sign: "Gemini")

act_1 = Activity.create(name: "bird watching", location: "dc", description: "watching exotic birds and appreciating nature", has_meal: false, has_alcohol: false)
act_2 = Activity.create(name: "coding", location: "zoom", description: "bonding thru suffering and pain", has_meal: true, has_alcohol: true)
act_3 = Activity.create(name: "dog park", location: "amy's neighborhood", description: "soaking in the sun on a perfect summer day", has_meal: false, has_alcohol: true)

RomanticDate.create(initiator_id: giulia.id, acceptor_id: amy.id, activity_id: act_1.id, outcome: "marriage")
RomanticDate.create(initiator_id: melinda.id, acceptor_id: anney.id, activity_id: act_2.id, outcome: "success")
RomanticDate.create(initiator_id: giulia.id, acceptor_id: anney.id, activity_id: act_3.id, outcome: "2nd date with amy included")

