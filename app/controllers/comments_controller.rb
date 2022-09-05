class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.assistant_id = current_user.assistant.id
    if @comment.save
      redirect_to comments_path
    else
      flash[:alert] = "Something went wrong."
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to assistant_path(@review.assistant), status: :see_other
  # end

  private

  def comment_params
    params.require(:comment).permit(:title, :content, :rating, :name, :assistant_id)
  end
end
