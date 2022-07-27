module Users
  class ElementsController < UsersController
    before_action :set_book
    before_action :set_element, only: %i[update destroy]

    def create
      @element = @book.elements.build(element_params)

      if @element.save
        notice = nil
      else
        notice = @element.errors.full_messages.join('. ') << "."
      end
      redirect_to edit_book_path(@book), notice: notice
    end

    def update
      @element.update(element_params)
      redirect_to edit_book_path(@element.book)
    end

    def destroy
      @element.destroy
      redirect_to elements_url, notice: "Element was successfully destroyed."
    end

    private

    def set_book
      @book = current_user.books.find(params[:book_id])
    end

    def set_element
      @element = @book.elements.find(params[:id])
    end

    def element_params
      params.require(:element).permit(:element_type, :notes)
    end
  end
end
