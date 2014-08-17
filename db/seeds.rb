# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

suits = ["clubs", "spades", "diamond", "heart"]
faces = ['2','3','4','5','6','7','8','9','10']
picture_cards = ["Jack", "Queen", "King"]

suits.each do |suit|
	faces.each do |face|
		card = Card.new(face: face, suit: suit, value: face.to_i)
		card.save
	end
	picture_cards.each do |face|
		card = Card.new(face: face, suit: suit, value: 10)
		card.save
	end
	card = Card.new(face: "Ace", suit: suit, value: 11)
	card.save
end
