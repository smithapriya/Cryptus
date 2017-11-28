class PostsController < ApplicationController
	before_action :find_post, only: [:destroy, :show, :edit, :update]

  def index
    @posts = Post.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
  	if params[:post][:btc] == "true"
			btc_param = true
  	else
  		btc_param = false
		end
    @post = Post.new(content: params[:post][:content], quantity: params[:post][:quantity].to_i, price: params[:post][:price].to_i, btc: btc_param)
    @post.user_id = current_user.id
    if @post.save!
    	redirect_to posts_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(story_params)
      redirect_to post_path
    else
      render 'edit'
    end
  end

  def destroy
    if @post.destroy
    else
      flash[:error] = 'Cannot delete this post...'
    end
    redirect_to posts_path
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:btc, :content, :quantity, :price)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
