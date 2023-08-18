# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'benchmark'

realtime = Benchmark.realtime do

  # User
  User.destroy_all
  User.create(
    [
      {
        name: 'Renato Franco',
        username: 'rrfranco93',
        email: 'renato_ny@live.com',
        password: '!Test123',
        password_confirmation: '!Test123' 
      }
    ]
  )
end