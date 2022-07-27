class RemoveContentTextFromElements < ActiveRecord::Migration[6.1]
  def change
    remove_column :elements, :content_text
  end
end
