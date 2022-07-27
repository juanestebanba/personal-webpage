class CreateElements < ActiveRecord::Migration[6.1]
  def change
    create_table :elements do |t|
      t.string :element_type
      t.string :content_text
      t.references :book, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
