class Game < ActiveRecord::Base
	attr_accessor :player_hand, :dealer_hand
	serialize :player_hand, :dealer_hand
end
