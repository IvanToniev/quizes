#!/bin/bash
rails g scaffold User email:string password:string first_name:string last_name:string admin:boolean
rails g scaffold Question title:string description:text content:text answer:text
rails g scaffold Quiz user:belongs_to title:string date:datetime
rails g scaffold QuestionQuizRelation question:belongs_to quiz:belongs_to show_order:integer
rails g scaffold Answer quiz:belongs_to user:belongs_to question:belongs_to start_time:datetime end_time:datetime success:boolean

rake db:create
rake db:migrate
rake db:seed
