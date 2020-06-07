#!/usr/bin/env lua

-- Luahabit is a habit tracker
--
-- Language: Lua
-- License: 
-- Copyright © 2020 Jiri Knesl
-- All rights reserved.
--
-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions are met:
-- 1. Redistributions of source code must retain the above copyright
-- notice, this list of conditions and the following disclaimer.
-- 2. Redistributions in binary form must reproduce the above copyright
-- notice, this list of conditions and the following disclaimer in the
-- documentation and/or other materials provided with the distribution.
--
-- THIS SOFTWARE IS PROVIDED BY Jiri Knesl ''AS IS'' AND ANY
-- EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
-- WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-- DISCLAIMED. IN NO EVENT SHALL Jiri Knesl BE LIABLE FOR ANY
-- DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
-- (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
-- LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
-- ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--
-- The views and conclusions contained in the software and documentation
-- are those of the authors and should not be interpreted as representing
-- official policies, either expressed or implied, of Jiri Knesl.
-- 
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
