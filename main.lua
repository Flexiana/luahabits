#!/usr/bin/env lua

-- Luahabit is a habit tracker
--
-- Language: Lua
--
-- TODO: Write readme.txt
-- TODO: Add license
-- TODO: Connect to the database
-- TODO: Get active habits
-- TODO: Add version to database (for migrations)
-- TODO: Database migrations
-- TODO: Insert habit item
-- TODO: Edit/Delete habit item
-- TODO: Documentation
-- TODO: Help
-- ]] --
--
-- Documentation habit.type:
-- 1 = daily
-- 2 = weekly
-- 

function read_habits()
  print("All read")

  local sqlite3 = require("lsqlite3")

  local db = sqlite3.open_memory()

  db:exec[[
    CREATE TABLE test (id INTEGER PRIMARY KEY, content);

    INSERT INTO test VALUES (NULL, 'Hello World');
    INSERT INTO test VALUES (NULL, 'Hello Lua');
    INSERT INTO test VALUES (NULL, 'Hello Sqlite3')
  ]]

  for row in db:nrows("SELECT * FROM test") do
    print(row.id, row.content)
  end
  
  return {}
end


habits = read_habits()
print(habits)
