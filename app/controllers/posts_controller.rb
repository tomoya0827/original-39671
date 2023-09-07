class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
    @target_age_options = TargetAge.exclude_id(1)
    if params[:target_age_id].present?
      @posts = @posts.where(target_age_id: params[:target_age_id])
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user)
    @comment = Comment.new
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:image, :explanatory_text, :target_age_id).merge(user_id: current_user.id)
  end

end
