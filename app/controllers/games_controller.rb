class GamesController < ApplicationController
  def new
    @letters = []
    rand(5..15).times do
      @letters << ('a'..'z').to_a.sample
    end
  end

  def score
    @initial_letters = params[:letters].split
    word_array = params[:word].split

    if word_array.all? { |letter| @initial_letters.include? letter }
      @score = "hello"
    else
      @score = "Sorry but #{params[:word]} can't be built out of #{@initial_letters}"
    end
    # if word_array.count <= initial_letters.count
    #   @count = true
    # end

  end
end
