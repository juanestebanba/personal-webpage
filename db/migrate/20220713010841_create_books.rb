class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :rating_text
      t.string :string
      t.integer :rating_number
      t.text :short_description
      t.text :notes
      t.string :category

      t.timestamps
    end
  end
end
