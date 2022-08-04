class RemoveContentFromPostelements < ActiveRecord::Migration[6.1]
  def change
    remove_column :postelements, :content
  end
end
