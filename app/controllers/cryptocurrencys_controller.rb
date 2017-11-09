class CryptocurrencysController < ApplicationController
  def fetch
    cryptocurrency = Cryptocurrency.find_by_id(params[:id])
    if cryptocurrency.name == 'btc'
      response = Faraday.get "https://api.coinmarketcap.com/v1/ticker/bitcoin/"
      response = JSON.parse(response.body)
      @name = "Bitcoin"
    else
      response = Faraday.get "https://api.coinmarketcap.com/v1/ticker/ethereum/"
      response = JSON.parse(response.body)
      @name = "Ethereum"
    end
    @price = response["price_usd"]
    @marketcap = response["market_cap_usd"]
    @volume = response["24h_volume_usd"]
    cryptocurrency.update(marketcap: @marketcap, price: @price, volume: @volume)
  end
end
