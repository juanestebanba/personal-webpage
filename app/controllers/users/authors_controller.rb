module Users
  class AuthorsController < UsersController
    before_action :set_author, only: [:show, :edit, :update, :destroy]
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index
      @authors = Author.all
    end

    def show
      @author = Author.find(params[:id])
    end

    def new
      @author = current_user.authors.build
      # @author = Author.new
    end

    def create
      @author = current_user.authors.build(author_params)
      # @author = Author.new(author_params)
      if @author.save
        # redirect_to @author, notice: 'Author was successfully created'
        redirect_to authors_path, notice: 'Author was successfully created'
      else
        render 'new'
      end
    end

    def edit
      @author = Author.find(params[:id])
    end
    def update
      @author = Author.find(params[:id])
      if @author.update(author_params)
        redirect_to @author, notice: 'Author was successfully updated.'
      else
        render 'edit'
      end
    end
    def destroy
      @author = Author.find(params[:id])
      @author.destroy
      redirect_to authors_path
    end

    private
    def set_author
      @author = Author.find(params[:id])
    end

    def author_params
      params.require(:author).permit(:name)
    end
  end
end
