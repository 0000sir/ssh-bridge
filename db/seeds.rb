# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# set host id to a large number for port number
update_seq_sql = "update sqlite_sequence set seq = 34567 where name = 'hosts';"
ActiveRecord::Base.connection.execute(update_seq_sql)
