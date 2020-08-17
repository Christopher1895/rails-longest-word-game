require 'json'
require 'open-uri'
require 'set'

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }.join('')
  end


  def get_data(word)
    response = open("https://wagon-dictionary.herokuapp.com/#{word}").read
    results = JSON.parse(response)
  end

  def score
    if results[:word] == params[:word]
      @score = "Perfect"

  end
end



