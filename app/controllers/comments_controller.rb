class CommentsController < ApplicationController
  before_action :require_user

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params.require(:comment).permit(:body))
    @comment.creator = current_user
    
    if @comment.save
      flash[:notice] = 'Your comment was added.'
      redirect_to post_path(@post)
    else 
      render 'posts/show'
    end
  end

  def vote
    @comment = Comment.find(params[:id])

    if new_vote?
      Vote.create(voteable: @comment, creator: current_user, vote: params[:vote])
      flash[:notice] = 'Your vote was counted.'
    else
      flash[:error] = 'You have already voted on this comment.'
    end
    
    redirect_to :back
  end

  private

  def new_vote?
    comments = Vote.where(creator: current_user, voteable: @comment)
    comments.empty?
  end
end