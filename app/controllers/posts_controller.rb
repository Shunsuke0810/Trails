class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.where.not(user_id: current_user.id)
  end

  def my_index
    @posts = Post.where(user_id: current_user.id)
  end

  def marking
    posts_ids = current_user.posts.pluck(:id)
    @posts = Post.where(id: [].concat(current_user.book_marks.pluck(:post_id), current_user.comments.pluck(:post_id), Comment.where(post_id: posts_ids).pluck(:post_id)))
  end

  # GET /posts/1 or /posts/1.json
  def show
    @book_mark = current_user.book_marks.find_by(post_id: @post.id)
    @comments = @post.comments
    @comment = @post.comments.build
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "投稿が作成されました" }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "投稿が更新されました" }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url, notice: "投稿が削除されました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:ocurence, :content, :location, :train_code,:body,:lat,:lng, { label_ids: [] })
    end
end
