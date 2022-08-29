class CommentsController < ApplicationController
  before_action :set_post, only: [:create, :edit, :update]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        flash.now[:notice] = 'コメントが投稿されました'
        format.html { render :index }
        format.js { render :index }
      else
        # format.js { redirect_to post_path(@post), notice: '投稿できませんでした...' } 
        format.html { render :show }
        flash.now[:notice] = '投稿できませんでした...'
        format.js { render :show }
      end
    end
  end
  
  def edit
    @comment = @post.comments.find(params[:id])
    @comment.user_id = current_user.id
    respond_to do |format|
      flash.now[:notice] = 'コメントの編集中'
      format.js { render :edit }
    end
  end
  
  def update
    @comment = @post.comments.find(params[:id])
      respond_to do |format|
        if @comment.update(comment_params)
          flash.now[:notice] = 'コメントが編集されました'
          format.js { render :index }
        else
          flash.now[:notice] = 'コメントの編集に失敗しました'
          format.js { render :edit }
        end
      end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      flash.now[:notice] = 'コメントが削除されました'
      format.js { render :index }
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:content)
  end
  
  def set_post
    @post = Post.find(params[:post_id])
  end
  
end
