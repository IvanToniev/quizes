#!/bin/bash
rm db/*.sqlite3
rm db/schema.rb
rails d scaffold User
rails d scaffold Question
rails d scaffold Quiz
rails d scaffold QuestionQuizRelation
rails d scaffold Answer