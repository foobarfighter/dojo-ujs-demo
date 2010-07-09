class CommentsController < ApplicationController
  def create
    comment = Comment.create!(params["comment"])
    respond_to do |format|
      format.js   { render :json => { :text => "test"} }
      format.json { render :json => comment }
      format.html { render :text => "Thank you!" }
    end
  end
end
