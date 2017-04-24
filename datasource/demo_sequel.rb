require 'sequel'
require 'sqlite3'

# Connect to database
db = Sequel.sqlite('bookShop.sqlite' )
# Select all records from the 'books' table
bks = db[:books]
bks.count
# Select books with 'Programming' as the category
bks = db[:books].where({:category => 'Programming'})
bks.class
bks.each do |b|
     puts b.class
     puts b
end
puts bks