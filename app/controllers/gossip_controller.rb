class GossipController < ApplicationController
  def show
  	@gossip_all= Gossip.all
  	@gossip = @gossip_all[params['id'].to_i]
  	@gossip_number = params['id']
  end

  def new 
  	@gossip = Gossip.new
  end

  def create
  	@gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 2)
    if @gossip.save
      redirect_to welcome_path
    else
      render "new"
    end
  end
end
