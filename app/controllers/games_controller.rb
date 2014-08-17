class GamesController < ApplicationController
	def show
		@game = Game.find(params[:id])
		
	end

	
	def hit
		@player_hand << @deck.shift
		@scorer = CardScorer.new(@player_hand)
		redirect_to game_path(@game)
			
	end

	def create
		@deck = []
		values = *(1..11)
    	4.times do
      		values.each do |value|
        	@deck << value 
        	end
    	end
		@game = Game.new
		@player_hand = []
		@dealer_hand = []	
		2.times { @dealer_hand << @deck.shuffle.shift }
		2.times { @player_hand << @deck.shuffle.shift }
		@game.dealer_hand = @dealer_hand
		@game.player_hand = @player_hand
		p @game.dealer_hand
		p @game.player_hand
		@game.save

		redirect_to game_path(@game.id)
	end

	def bust

	end
end
