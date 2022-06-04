require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    alphabet = ('a'..'z').to_a
    $letters = alphabet.sample(10)
  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/#{params[:new]}"

    html_file = URI.open(url).read
    html_doc = JSON.parse(html_file)
    @result = html_doc['found']
  end
end
