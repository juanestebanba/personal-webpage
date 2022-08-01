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
      @paragraph = @book.elements.build(element_type: 'paragraph')
    end

    def update
      @book = Book.find(params[:id])
      if @book.update(book_params)
        redirect_to @book
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
      # @book = current_user.books.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:name, :rating_text, :rating_number, :short_description, :rich_notes, :category, :author_id, :user_id)
      # :author, :short_description,:category
    end
  end

  # def require_same_user
  #   if current_user != @book.user
  #     flash[:danger] = "You can only edit or delete your own books."
  #     redirect_to books_path
  #   end
  # end

  # def require_admin
  #   if logged_in? and !current_user.admin?
  #     flash[:danger] = "Only admins can perform that action."
  #     redirect_to books_path
  #   end
  # end

  # def require_login
  #   if !logged_in?
  #     flash[:danger] = "You must be logged in to perform that action."
  #     redirect_to books_path
  #   end
  # end

  # def require_login_or_admin
  #   if !logged_in? and !current_user.admin?
  #     flash[:danger] = "You must be logged in or an admin to perform that action."
  #     redirect_to books_path
  #   end
  # end


end
