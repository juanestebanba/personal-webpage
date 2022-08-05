module Users
  class PostsController < UsersController
    before_action :set_post, only: %i[show edit update destroy]
    skip_before_action :authenticate_user!, only: %i[index show]

    def index
      @posts = Post.all
      # @posts = current_user.posts
    end

    def show
      @post = Post.find(params[:id])
    end

    def new
      @post = current_user.posts.build
    end

    def create
      @post = current_user.posts.build(post_params)

      if @post.save
        redirect_to @post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end

    def edit
      @post = Post.find(params[:id])
      # @paragraph = @post.postelements.build(element_type: 'paragraph')
    end

    def update
      @post = Post.find(params[:id])
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
      params.require(:post).permit(:title, :description, :rich_content)
    end
  end
end
