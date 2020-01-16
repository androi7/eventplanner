class CommentsController < ApplicationController



  def create
    @comment = Comment.create comment_params
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
    else
      flash.now[:error] = 'Could not create comment.'
    end
    redirect_to event_path(@comment.event_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:post, :user_id, :event_id)
  end

end
