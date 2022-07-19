class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
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

  def book_params
    params.require(:book).permit(:title, :author, :short_description, :rich_notes, :category)
  end

  def set_book
    @book = Book.find(params[:id])
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
