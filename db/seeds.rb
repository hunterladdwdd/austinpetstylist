# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jade = User.new(:username => "Jade Williams", :email => "jade@austinpetstylist.com", :password => "GizmoMarieJoy")
jade.save

hunter = User.new(:username => "Hunter Ladd", :email => "dhunter.ladd@gmail.com", :password => "dhuntergizmo")
hunter.save