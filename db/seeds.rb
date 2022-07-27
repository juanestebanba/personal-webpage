# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Book.destroy_all
Author.destroy_all

puts "creating books"

book1 = Book.create(
  name: 'The Hobbit',
  rating_text: '5/10',
  rating_number: 5,
  short_description: 'A Hobbit is a fictional story set in the world
                      of Middle-earth, in the time of the Third Age.
                      The story is about the hobbits Frodo and Sam, two young
                      wizards who live in the Shire, and their quest to destroy
                      the One Ring, the only source of power in Middle-earth,
                      from the evil Gollum.',
  notes: 'The Lord of the Rings is a fantasy novel written by English author and scholar J.R.R. Tolkien.
  It is one of the primary influences of the modern fantasy genre, and is one of the most popular
  works of literature in English literature.The story of a young Hobbit named Frodo Baggins, who is swept
  away to live at the Shire and is swept away to the Lonely Mountain,where he finds a new friend,
  the wizard Gandalf, and a new ring,the One Ring,which makes him a wizard. /n

          The Lord of the Rings is a fantasy novel written by English author and scholar J.R.R. Tolkien.
          It is one of the primary influences of the modern fantasy genre, and is one of the most popular
          works of literature in English literature.The story of a young Hobbit named Frodo Baggins, who
          is swept away to live at the Shire and is swept away to the Lonely Mountain,where he finds a new
          friend, the wizard Gandalf, and a new ring,the One Ring,which makes him a wizard.

          The Lord of the Rings is a fantasy novel written by English author and scholar J.R.R. Tolkien.
          It is one of the primary influences of the modern fantasy genre, and is one of the most popular
          works of literature in English literature.The story of a young Hobbit named Frodo Baggins, who
          is swept away to live at the Shire and is swept away to the Lonely Mountain,where he finds a new
          friend, the wizard Gandalf, and a new ring,the One Ring,which makes him a wizard.

          The Lord of the Rings is a fantasy novel written by English author and scholar J.R.R. Tolkien.
          It is one of the primary influences of the modern fantasy genre, and is one of the most popular
          works of literature in English literature.The story of a young Hobbit named Frodo Baggins, who
          is swept away to live at the Shire and is swept away to the Lonely Mountain,where he finds a new
          friend, the wizard Gandalf, and a new ring,the One Ring,which makes him a wizard.',
  category: 'Fantasy',
  user_id: 1
)

book2 = Book.create(
  name: 'The Lord of the Rings',
  rating_text: '7/10',
  rating_number: 7,
  short_description: 'The Lord of the Rings is a fantasy novel written by English author and scholar J.R.R. Tolkien.
                      It is one of the primary influences of the modern fantasy genre, and is one of the most
                      popular works of literature in English literature.
                      The story of a young Hobbit named Frodo Baggins, who is swept away to live at the Shire and is
                      swept away to the Lonely Mountain, where he finds a new friend, the wizard Gandalf, and a
                      new ring, the One Ring,which makes him a wizard.',
  notes: 'The Lord of the Rings is a fantasy novel written by English author and scholar J.R.R. Tolkien.
          It is one of the primary influences of the modern fantasy genre, and is one of the most popular
          works of literature in English literature.The story of a young Hobbit named Frodo Baggins, who is swept
          away to live at the Shire and is swept away to the Lonely Mountain,where he finds a new friend,
          the wizard Gandalf, and a new ring,the One Ring,which makes him a wizard. /n

          The Lord of the Rings is a fantasy novel written by English author and scholar J.R.R. Tolkien.
          It is one of the primary influences of the modern fantasy genre, and is one of the most popular
          works of literature in English literature.The story of a young Hobbit named Frodo Baggins, who
          is swept away to live at the Shire and is swept away to the Lonely Mountain,where he finds a new
          friend, the wizard Gandalf, and a new ring,the One Ring,which makes him a wizard.

          The Lord of the Rings is a fantasy novel written by English author and scholar J.R.R. Tolkien.
          It is one of the primary influences of the modern fantasy genre, and is one of the most popular
          works of literature in English literature.The story of a young Hobbit named Frodo Baggins, who
          is swept away to live at the Shire and is swept away to the Lonely Mountain,where he finds a new
          friend, the wizard Gandalf, and a new ring,the One Ring,which makes him a wizard.

          The Lord of the Rings is a fantasy novel written by English author and scholar J.R.R. Tolkien.
          It is one of the primary influences of the modern fantasy genre, and is one of the most popular
          works of literature in English literature.The story of a young Hobbit named Frodo Baggins, who
          is swept away to live at the Shire and is swept away to the Lonely Mountain,where he finds a new
          friend, the wizard Gandalf, and a new ring,the One Ring,which makes him a wizard.',
  category: 'Fantasy',
  user_id: 1
)

# book3 = Book.create(
#   name: 'Juanes book',
#   rating_text: '10/10',
#   rating_number: 10,
#   short_description: 'This is the new Juanes book ',
#   notes: recursos_replit.md,
#   category: 'Fantasy'
# )


puts "creating authors"

author1 = Author.create(
  name: 'J.R.R. Tolkien',
  books: [book1, book2]
)

# author2 = Author.create(
#   name: 'Juan Esteban Bravo',
#   books: [book3]
# )
