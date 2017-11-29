class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    fetch
  end

  def fetch
    bitcoin = Cryptocurrency.find_by name: "btc"
    response = Faraday.get "https://api.coinmarketcap.com/v1/ticker/bitcoin/"
    response = JSON.parse(response.body)[0]
    @bname = "Bitcoin"
    @bprice = response["price_usd"].to_f
    @bmarketcap = response["market_cap_usd"].to_f
    @bvolume = response["24h_volume_usd"].to_f
    @bchange = response["percent_change_1h"].to_f
    bitcoin.update(marketcap: @bmarketcap, price: @bprice, volume: @bvolume)

    ethereum = Cryptocurrency.find_by name: "eth"
    response = Faraday.get "https://api.coinmarketcap.com/v1/ticker/ethereum/"
    response = JSON.parse(response.body)[0]
    @ename = "Ethereum"
    @eprice = response["price_usd"].to_f
    @emarketcap = response["market_cap_usd"].to_f
    @evolume = response["24h_volume_usd"].to_f
    @echange = response["percent_change_1h"].to_f
    ethereum.update(marketcap: @emarketcap, price: @eprice, volume: @evolume)
  end
end
