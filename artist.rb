require_relative "./config/environment.rb"

class Artist < ActiveRecord::Base


    def self.create_table
        sql = <<-SQL
            CREATE TABLE IF NOT EXISTS artists (
            id INTEGER PRIMARY KEY,
            name TEXT,
            genre TEXT,
            age INTEGER,
            hometown TEXT
            )
        SQL
      ActiveRecord::Base.connection.execute(sql)
    end



end