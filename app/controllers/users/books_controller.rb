module Users
  class BooksController < UsersController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    skip_before_action :authenticate_user!, only: [:index, :show]

    def index
      @books = Book.all
      # @books = current_user.books
    end

    def show
      @book = Book.find(params[:id])
      # @book = Book.find_by(name: params[:name])
    end

    def new
      @book = current_user.books.build
    end

    def create
      @book = current_user.books.build(book_params)
      # @book.save
      if @book.save
        redirect_to book_path(@book), notice: 'Book was successfully created'
      else
        render 'new'
      end
    end

    def edit
      @book = Book.find(params[:id])
      # @book = Book.find(params[:id])
      # @paragraph = @book.elements.build(element_type: 'paragraph')
    end

    def update
      @book = Book.find(params[:id])
      if @book.update(book_params)
        redirect_to @book, notice: 'Book was successfully updated.'
      else
        render 'edit'
      end
    end

    def destroy
      @book = Book.find(params[:id])
      @book.destroy
      redirect_to books_path
    end

    private

    def set_book
      @book = Book.find(params[:id])
      # @book = Book.find_by(name: params[:name])
      # @book = current_user.books.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:name, :rating_text, :rating_number, :short_description, :rich_notes, :category, :author_id, :user_id)
      # :author, :short_description,:category
    end
  end
end
