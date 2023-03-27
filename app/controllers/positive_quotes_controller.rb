class PositiveQuotesController < ApplicationController
  require "httparty"

  def quote
    response = HTTParty.get("http://api.forismatic.com/api/1.0/?method=getQuote&format=json&lang=en")
    quote = JSON.parse(response.body)["quoteText"]
    render json: { quote: quote }
  end
end
