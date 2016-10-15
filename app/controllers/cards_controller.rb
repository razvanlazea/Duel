class CardsController < ApplicationController
  def index
  	@card1 = Card.find(1)
  end

  def new
  	@card = Card.new
  end

  def create
  	@card = Card.new(card_params)
  	@card.save
  end

  def card_params
  	params.require(:card).permit(:name, :race, :civilization, :kind, :power, :manaCost, :manaValue, :avatar)
  end
end
