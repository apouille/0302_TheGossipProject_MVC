class GossipController < ApplicationController
  def show
  	@gossip_all= Gossip.all
  	@gossip = @gossip_all[params['id'].to_i]
  	@gossip_number = params['id']
  end
end
