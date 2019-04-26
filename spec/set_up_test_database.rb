require 'pg'

def setup_test_database
  p "Setting up test database..."

  connection = PG.connect(dbname: 'bookmark_manager_test')

  # Clears the bookmark table every time you run the script
  connection.exec("TRUNCATE bookmarks;")
end
