class PagesController < ApplicationController
  def index
    @grandma = params[:grandma]
  end

  def grandma_says
    @what_you_said_to_grandma = params[:user_input]

    if @what_you_said_to_grandma != @what_you_said_to_grandma.upcase
      @grandma_response = "SPEAK UP!"
    elsif @what_you_said_to_grandma == "I LOVE YOU GRANDMA"
      @grandma_response = "You're such a good grandson!"
    else
      @grandma_response = "NOT SINCE 1927!"
    end

  end
end

































