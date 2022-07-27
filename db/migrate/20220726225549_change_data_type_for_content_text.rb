class ChangeDataTypeForContentText < ActiveRecord::Migration[6.1]
  def change
    change_column :elements, :content_text, :text
  end
end
