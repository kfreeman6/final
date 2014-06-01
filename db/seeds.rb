User.delete_all
kat = User.create("username" => "kfreestyle", "password" => "admin", "name" => "Kathryn Freeman", "email_address" => "kathryn.m.freeman@gmail.com", "member_since" => "May 2014", "tagline" => "More avocado, please.")

Network.delete_all
freeman = Network.create("network" => "Freeman Fambly")

Networkuser.delete_all
Networkuser.create("network_id" => freeman["id"], "user_id" => kat["id"] )

Recipe.delete_all
test = Recipe.create("recipe_name" => "test", "recipe_desc" => "Test test test.", "recipe_photo" => "www.apple.com", "notes" => "Mmm-mmm good", "user_id" => kat["username"], "category_name" => "Mexican")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
