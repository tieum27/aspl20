class AccueilController < ApplicationController
  def index
    @post = Post.last
  end
end
