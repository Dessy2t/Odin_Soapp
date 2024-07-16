class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)
    if !@like.save
      flash[:alert] = "You already liked this post"
    end
  end


  def destroy
    @like = current_user.likes.(params[:id])
    @loke.destroy
    redirect_to root_path
  end

  def like_params
    params.require(:like).permit(:post_id)
  end
end
