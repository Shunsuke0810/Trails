class CommentsController < ApplicationController
  def create
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.build(comment_params)
      respond_to do |format|
        if @comment.save
          format.html { redirect_to post_path(@post) }
        else
          format.html { redirect_to blog_path(@post), notice: '投稿できませんでした' }
        end
      end
    end
  
    private
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
end
