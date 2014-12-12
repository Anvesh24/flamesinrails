class GamesController < ApplicationController
include GamesHelper

	

	def new
	    @game = Game.new
	end

	def create

		@game = Game.new(game_params)
	    @result = value(:name1,:name2)

		if @game.save
			redirect_to root_path
		end
	end


	private

	def game_params
		params.require(:game).permit(:name1, :name2, :result)
	end

end