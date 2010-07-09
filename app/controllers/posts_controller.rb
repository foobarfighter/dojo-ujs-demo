class PostsController < ApplicationController
  def index
    post_relation = Post.order("created_at desc")
    if request.xhr?
      @posts = post_relation.where("id < ?", params["last_id"])
      render :partial => "post_list.html", :locals => { :posts => @posts }
    else
      @posts = post_relation.limit(2)
    end
  end

  def show
    @post = Post.find(params["id"])
  end
end
