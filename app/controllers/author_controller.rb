class AuthorController < ApplicationController
  def page
  	@user = User.find(params["id"])
  end
end
