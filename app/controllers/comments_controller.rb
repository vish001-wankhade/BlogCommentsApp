# frozen_string_literal: true

class CommentsController < ApplicationController
  # For adding replies on comments of blogs

  def new
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.new(parent_id: params[:parent_id])
    # respond_to do |format|
    #   format.js  {}
    # end
  end

  # For adding comments on blog
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create(comment_params)
    redirect_to blogs_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:comment, :blog_id, :parent_id)
  end
end
