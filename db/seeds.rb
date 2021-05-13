# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


WishlistPlace.destroy_all
Wishlist.destroy_all
Place.destroy_all
User.destroy_all

max = User.create(username: "max", password: "123")
ian = User.create(username: "ian", password: "123")
jacob = User.create(username: "jacob", password: "123")

giant = Place.create(name: "Giant", phone: "(773) 252-0997", street_address: "3209 W Armitage Ave", city: "Chicago", state: "IL", zip: "60647", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/aXLw1pvGvGLX4eukOBIryg/348s.jpg", url: "https://www.giantrestaurant.com/", rating: 4.5, review_count: 453, categories: "American (New)", price: "$$$")

lula = Place.create(name: "Lula Cafe", phone: "(773) 489-9554", street_address: "2537 N Kedzie Blvd", city: "Chicago", state: "IL", zip: "60647", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/WkMtZa10zHh9HthzSoowzg/l.jpg", url: "http://lulacafe.com/", rating: 4.5, review_count: 1941, categories: "Breakfast & Brunch", price: "$$")

longman = Place.create(name: "Longman & Eagle", phone: "(773) 276-7110", street_address: "2657 N Kedzie Ave", city: "Chicago", state: "IL", zip: "60647", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/Rr6wxK-R6RUpnTKxzcKibQ/l.jpg", url: "http://www.longmanandeagle.com/", rating: 4.0, review_count: 2410, categories: "Gastropubs", price: "$$")

daisies = Place.create(name: "Daisies", phone: "(773) 661-1671", street_address: "2523 N Milwaukee Ave", city: "Chicago", state: "IL", zip: "60647", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/EjUu3sIudgkThDGD8KPrxg/l.jpg", url: "https://www.daisieschicago.com/", rating: 4.5, review_count: 280, categories: "Pasta Shops", price: "$$")

osteria = Place.create(name: "Osteria Langhe", phone: "(773) 661-1582", street_address: "2824 W Armitage Ave", city: "Chicago", state: "IL", zip: "60647", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/sQ21vorD6hJqFHwcMi-3pg/l.jpg", url: "https://www.osterialanghe.com/", rating: 4.5, review_count: 363, categories: "Italian", price: "$$$")

dos = Place.create(name: "Dos Urban Cantina", phone: "(773) 661-6452", street_address: "2829 W Armitage Ave", city: "Chicago", state: "IL", zip: "60647", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/Gn9QPif5jeB51pcllqIueg/348s.jpg", url: "https://www.dosurbancantina.com/", rating: 4.5, review_count: 368, categories: "Mexican", price: "$$")

bixi = Place.create(name: "Bixi Beer", phone: "(773) 904-7368", street_address: "2515 N Milwaukee Ave", city: "Chicago", state: "IL", zip: "60647", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/rtAKyKbuUGv3KawopAoEGA/348s.jpg", url: "https://www.bixi.beer/", rating: 4.0, review_count: 294, categories: "Asian Fusion", price: "$$")

bang = Place.create(name: "Bang Bang Pie & Biscuits", phone: "(773) 276-8888", street_address: "2051 N California Ave", city: "Chicago", state: "IL", zip: "60647", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/kPyZIyyVvdnwMSJhfnMGMQ/348s.jpg", url: "https://www.bangbangpie.com/", rating: 4.5, review_count: 1154, categories: "Bakeries", price: "$$")

tds = Place.create(name: "Table, Donkey and Stick", phone: "(773) 486-8525", street_address: "2728 W Armitage Ave", city: "Chicago", state: "IL", zip: "60647", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/kSHOCZoLzNIZhVkwBI3t0A/348s.jpg", url: "http://tabledonkeystick.com/", rating: 4.0, review_count: 438, categories: "Modern European", price: "$$")

wasabi = Place.create(name: "Ramen Wasabi", phone: "(773) 227-8180", street_address: "2101 N Milwaukee Ave", city: "Chicago", state: "IL", zip: "60647", image_url: "https://s3-media0.fl.yelpcdn.com/bphoto/Tv5wtUME7PQRPjwf5tQCdg/348s.jpg", url: "http://www.wasabichicago.com/", rating: 4.0, review_count: 1918, categories: "Ramen", price: "$$")

wishlist1 = Wishlist.create(user: max, title: "Date Night")
wishlist2 = Wishlist.create(user: max, title: "Expensive")
wishlist3 = Wishlist.create(user: jacob, title: "Favs")

wishlist_places1 = WishlistPlace.create(place: giant, wishlist: wishlist1)
wishlist_places2 = WishlistPlace.create(place: longman, wishlist: wishlist1)
wishlist_places3 = WishlistPlace.create(place: osteria, wishlist: wishlist1)
wishlist_places4 = WishlistPlace.create(place: dos, wishlist: wishlist1)
wishlist_places5 = WishlistPlace.create(place: bixi, wishlist: wishlist1)
wishlist_places6 = WishlistPlace.create(place: tds, wishlist: wishlist1)
wishlist_places7 = WishlistPlace.create(place: giant, wishlist: wishlist2)
wishlist_places8 = WishlistPlace.create(place: osteria, wishlist: wishlist2)
wishlist_places9 = WishlistPlace.create(place: daisies, wishlist: wishlist3)
wishlist_places10 = WishlistPlace.create(place: dos, wishlist: wishlist3)
wishlist_places11 = WishlistPlace.create(place: bang, wishlist: wishlist3)
wishlist_places12 = WishlistPlace.create(place: wasabi, wishlist: wishlist3)

puts "***** SEEDED *****"