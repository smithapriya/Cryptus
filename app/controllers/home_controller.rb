class HomeController < ApplicationController
  def index
    fetch
  end
  def fetch
    cryptocurrency = Cryptocurrency.find_by name: "btc"
    if cryptocurrency.name == "btc"
      response = Faraday.get "https://api.coinmarketcap.com/v1/ticker/bitcoin/"
      response = JSON.parse(response.body)[0]
      @name = "Bitcoin"
    else
      response = Faraday.get "https://api.coinmarketcap.com/v1/ticker/ethereum/"
      response = JSON.parse(response.body)[0]
      @name = "Ethereum"
    end
    @price = response["price_usd"].to_f
    @marketcap = response["market_cap_usd"].to_f
    @volume = response["24h_volume_usd"].to_f
    cryptocurrency.update(marketcap: @marketcap, price: @price, volume: @volume)
  end
end
