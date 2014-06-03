User.delete_all
kat = User.create("username" => "kfreestyle", "password" => "freeman", "name" => "Kathryn Freeman", "email_address" => "kathryn.m.freeman@gmail.com", "member_since" => "May 2014", "tagline" => "More avocado, please.")
elisa = User.create("username" => "elisavanoss", "password" => "smith", "name" => "Elisa Smith", "email_address" => "elisa_vanoss@yahoo.com", "member_since" => "May 2014", "tagline" => "To be completed.")
christie = User.create("username" => "christinad", "password" => "davidson", "name" => "Christina Davidson", "email_address" => "christina.freeman@gmail.com", "member_since" => "May 2014", "tagline" => "To be completed.")

Network.delete_all
freeman = Network.create("network" => "Freeman Fambly")
smith = Network.create("network" => "Smith Family")
davidson = Network.create("network" => "Davidson Family")

Networkuser.delete_all
Networkuser.create("network_id" => freeman["id"], "user_id" => kat["id"] )
Networkuser.create("network_id" => freeman["id"], "user_id" => elisa["id"] )
Networkuser.create("network_id" => smith["id"], "user_id" => elisa["id"] )
Networkuser.create("network_id" => freeman["id"], "user_id" => christie["id"] )
Networkuser.create("network_id" => davidson["id"], "user_id" => christie["id"] )

Recipe.delete_all
Recipe.create("recipe_name" => "Squash on Toast", "recipe_URL" => "http://www.nytimes.com/recipes/12944/jean-georges-vongerichtens-squash-on-toast.html", "recipe_photo" => "http://graphics8.nytimes.com/images/2012/11/14/dining/14BITTMAN_SPAN/14BITTMAN-popup.jpg", "recipe_added" => "May 28, 2014", "star_rating" => "5", "notes" => "Perfect as-is.  From the NYTimes.", "user_id" => kat["id"], "category_name" => "Appetizer")
Recipe.create("recipe_name" => "Lemon Garlic Shrimp with Veggies", "recipe_URL" => "http://www.eatingwell.com/recipes/lemon_garlic_shrimp_vegetables.html", "recipe_photo" => "http://bed56888308e93972c04-0dfc23b7b97881dee012a129d9518bae.r34.cf1.rackcdn.com/sites/default/files/imagecache/standard/recipes/MF6435.JPG", "recipe_added" => "April 8, 2014", "star_rating" => "4", "notes" => "Easy and delicious!", "user_id" => christie["id"], "category_name" => "Main Dish")
Recipe.create("recipe_name" => "Chocolate Chip Breakfast Scones", "recipe_URL" => "http://sugarywinzy.com/chocolate-chip-breakfast-scones/", "recipe_photo" => "http://sugarywinzy.com/wp-content/uploads/2013/04/SugaryWinzy-Chocolate-Chip-Breakfast-Scones2.jpg", "recipe_added" => "December 27, 2013", "star_rating" => "4", "notes" => "Fun and easy to make!  Don't skip the egg wash, and I recommend dusting them with sugar after brushing them with egg.", "user_id" => kat["id"], "category_name" => "Breakfast")
Recipe.create("recipe_name" => "Skillet Gnocchi with Chard and White Beans", "recipe_URL" => "http://www.eatingwell.com/recipes/skillet_gnocchi_with_chard_white_beans.html", "recipe_photo" => "http://bed56888308e93972c04-0dfc23b7b97881dee012a129d9518bae.r34.cf1.rackcdn.com/sites/default/files/imagecache/standard/recipes/MV6769.JPG", "recipe_added" => "January 22, 2013", "star_rating" => "4", "notes" => "I used extra cheese, but that's just me.", "user_id" => kat["id"], "category_name" => "Main Dish")
Recipe.create("recipe_name" => "Alton Brown's Guacamole", "recipe_URL" => "http://www.foodnetwork.com/recipes/alton-brown/guacamole-recipe.html", "recipe_photo" => "http://foodnetwork.sndimg.com/content/dam/images/food/fullset/2011/4/7/0/EA1F08_guacamole_s4x3.jpg.rend.sni12col.landscape.jpeg", "recipe_added" => "January 22, 2013", "star_rating" => "5", "notes" => "Killer guac.  Don't skimp on the lime juice.", "user_id" => kat["id"], "category_name" => "Appetizer")
