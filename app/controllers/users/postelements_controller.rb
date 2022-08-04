module Users
  class PostelementsController < UsersController
    before_action :set_post
    before_action :set_postelement, only: %i[update destroy]

    def create
      @postelement = @post.postelements.build(postelement_params)

      if @postelement.save
        notice = nil
      else
        # notice = @postelement.errors.full_message.join(". ") << "."
      end
      redirect_to edit_post_path(@post), notice: notice
    end

    def update
      @postelement.update(postelement_params)
      redirect_to edit_post_path(@postelement.post)
    end

    def destroy
      @postelement.destroy
      redirect_to postelements_url, notice: 'Postelement was successfully destroyed.'
    end

    private

    def set_post
      @post = current_user.posts.find(params[:post_id])
    end

    def set_postelement
      @postelement = @post.postelements.find(params[:id])
    end

    def postelement_params
      params.require(:postelement).permit(:element_type, :content)
    end
  end
end
