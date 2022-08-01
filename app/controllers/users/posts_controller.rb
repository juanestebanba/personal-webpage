module Users
  class PostsController < ApplicationController
    before_action :set_post, only: %i[ show edit update destroy ]

    def index
      @posts = current_user.posts
    end

    def show
    end

    def new
      @post = current_user.posts.build
    end

    def edit
    end

    def create
      @post = current_user.posts.build(post_params)

      if @post.save
        redirect_to @post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end

    def update
      if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @post.destroy
      redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end

    private

      # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = current_user.posts.find(params[:id])
    end

      # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :description)
    end
  end
end
