# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Friend.destroy_all
Item.destroy_all 


user1 = User.create(username: "richard3000", email: "richard@gmail.com" , password: "password" , image_url: "https://culturalvistas.org/cms/assets/uploads/2015/08/profilepif.jpg")
user2 = User.create(username: "ElliottSmelliott", email: "Ellie@gmail.com" , password: "password" , image_url: "https://semantic-ui.com/images/avatar/large/elliot.jpg")
user3 = User.create(username: "JennyLovesCats", email: "JennyJo@gmail.com" , password: "password" , image_url: "https://semantic-ui.com/images/avatar/large/jenny.jpg")
user4 = User.create(username: "JillianNeedsCoffee", email: "Jill3000@gmail.com" , password: "password" , image_url: "https://semantic-ui.com/images/avatar/large/stevie.jpg")


friend1 = Friend.create(requestor_id: user1.id , requestee_id: user2.id, status: "Pending" ,approved: false)
friend2 = Friend.create(requestor_id: user1.id, requestee_id: user3.id, status: "Approved" ,approved: true)

# richards items
item1 = Item.create(owner_id: user1.id, name:"Lawnmower", description:"2019 brand new lawnmower, works great.",item_category:"Household", status:"Available", private: true, img_url: "https://imgaz2.staticbg.com/thumb/large/oaupload/ser1/banggood/images/6A/92/e72d8be3-84de-4bdf-8511-a0fa53af1a60.jpg" )
item2 = Item.create(owner_id: user1.id, name:"Snowboard", description:"2010 Snowboard. Works great, hardly used.",item_category:"Recreation", status:"Available", private: true, img_url: "https://cdn.shoplightspeed.com/shops/626837/files/15895831/1500x4000x3/rome-rome-royal-womens-snowboard-2020.jpg" )
item3 = Item.create(owner_id: user1.id, name:"Electric Saw", description:"Old but cuts wood great.",item_category:"Household", status:"Lent Out", private: false, img_url: "https://images.homedepot-static.com/productImages/20d6a167-7d4a-4773-80a0-65dfe10d2aa4/svn/makita-circular-saws-5007f-64_1000.jpg" )

# Others items
item4 = Item.create(owner_id: user2.id, name:"Bicycle", description:"Great for weekend rides",item_category:"Recreation", status:"Available", private: false, img_url: "https://images.homedepot-static.com/productImages/8448314c-5c3e-4673-b168-bedc095c4ca8/svn/black-gray-brown-sculptures-92665-64_600.jpg" )
item5 = Item.create(owner_id: user3.id, name:"Plastic Table", description:"Great for parties, but annoying to store in small apartments.",item_category:"Household", status:"Available", private: false, img_url: "https://images-na.ssl-images-amazon.com/images/I/51huCicmPZL._AC_SX522_.jpg" )


# BORROW REQUESTS
borrow1 = BorrowRequest.create(owner_id: user1.id, borrower_id: user2.id, item_id: item1.id, status:"Pending", approved: false, returned: false, start_date: "09/14/2009 8:00", end_date: "09/16/2009 10:00" )



