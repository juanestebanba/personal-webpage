class MigrateNotestoRichNotes < ActiveRecord::Migration[6.1]
  def up
    Book.find_each do |book|
      book.update(rich_notes: book.notes)
    end
  end

  def down
    Book.find_each do |book|
      book.update(body: book.rich_notes)
      book.update(rich_notes: nil)
    end
  end
end
