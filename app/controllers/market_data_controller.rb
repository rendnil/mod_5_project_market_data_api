class MarketDataController < ApplicationController

  def create
    #while true
    loop do
    data = RestClient.get('https://api.iextrading.com/1.0/stock/market/crypto')
    #sleep(2)
    #end
    ActionCable.server.broadcast 'market_data_channel', data
    sleep(2)
  end
    #render json:(data)
  end



end
