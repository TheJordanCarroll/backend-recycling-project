# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = RestClient.get 'https://data.cityofnewyork.us/resource/sxx4-xhzg.json'
array_of_bins = JSON.parse(response)

array_of_bins.each do |bin|
    # puts bin["longi tude"] 
    Site.create(address: bin["address"], borough: bin["borough"], name: bin["park_site_name"], website: "https://www1.nyc.gov/assets/dsny/site/home", latitude: bin["latitude"], longitude: bin["longitude"], rating: 0, accepted_items: "paper,cardboard, plastic, glass, cartons", image: "https://upload.wikimedia.org/wikipedia/en/0/08/DSNY_logo_2016.jpg", hours: "7am-3pm", twitter: "https://twitter.com/nycsanitation?lang=en", ig: "https://www.instagram.com/nycsanitation/?hl=en", facebook: "https://www.facebook.com/nycsanitation/")
end

response = RestClient.get 'https://data.cityofnewyork.us/resource/qnjm-wvu5.json'
array_of_textiles = JSON.parse(response)

array_of_textiles.each do |textile|
    # puts textile["address"]
    Site.create(address: textile["address"], borough: textile["borough"], name: textile["vendor_name"], website: textile["website"], latitude: textile["latitude"], longitude: textile["longitude"], rating: 0, accepted_items: textile["items_accepted"], image: "https://static.dezeen.com/uploads/2016/08/new-york-2020-skyline_dezeen_ss-852x609.jpg", hours: "9am-5pm", twitter: "https://twitter.com/wearablecollect?lang=en", ig: "https://www.instagram.com/wearablecollections/?hl=en", facebook: " https://www.facebook.com/wearablecollections/services/?ref=page_internal")
end

response = RestClient.get 'https://data.cityofnewyork.us/resource/wshr-5vic.json'
array_of_e_waste = JSON.parse(response)

array_of_e_waste.each do |waste|
    # puts textile["address"]
    Site.create(address: waste["address"], borough: waste["borocd"], name: waste["dropoff_sitename"], website: "https://www1.nyc.gov/assets/dsny/site/contact/e-waste-pickup-request", latitude: waste["latitude"], longitude: waste["longitude"], rating: 0, accepted_items: "electronics", image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Radio_City_Music_Hall_Panorama.jpg", hours: "9am-5pm", twitter: "https://twitter.com/nysdec?lang=en", ig: "https://www.instagram.com/nysdec/?hl=en", facebook: " https://www.facebook.com/NYSDEC/")
end



# puts bin["address"] 
# puts bin["borough"] 
# puts bin["park_site_name"]
# website: "https://www1.nyc.gov/assets/dsny/site/home"
# puts bin["latitude"]
# puts bin["longitude"] 
# rating:"0"
# accepted_items: "paper,cardboard, plastic, glass, cartons"
# image: "https://upload.wikimedia.org/wikipedia/en/0/08/DSNY_logo_2016.jpg" 
# hours: "7am-3pm"
# twitter: "https://twitter.com/nycsanitation?lang=en"
# ig: "https://www.instagram.com/nycsanitation/?hl=en"
# facebook: "https://www.facebook.com/nycsanitation/"






User.create(name: "Oscar", username: "oscar123", password: "abc123", email: "oscarthegrouch@gmail.com", address: "123 Sesame Street", borough: "Manhattan", image: "https://thinkchristian-webassets.imgix.net/articleImages/2019/sesame-street-at-50-craft.jpg?crop=focalpoint&fit=crop&fp-x=0.5&fp-y=0.5&h=500&ixlib=php-1.1.0&q=80&w=800&s=fccd8dc1bbdd22d711ef73af868a65e5")
User.create(name: "Captain Planet", username: "captain123", password: "abc123", email: "captainplanet@gmail.com", address: "123 Planet Street", borough: "Brooklyn", image: "https://pbs.twimg.com/profile_images/939549969958051840/zs3ndSvV_400x400.jpg")

Category.create(name: "Paper", video: "https://www.youtube.com/watch?v=RR_218EtLJU", description: "newspapers, magazines, catalogs, phone books, mixed paper white and colored paper (lined, copier, computer; staples are ok) mail and envelopes (any color; window envelopes are ok) receipts paper bags (handles ok) wrapping paper soft-cover books (phone books, paperbacks, comics, etc.; no spiral bindings) (schools should follow their school book recycling procedures)", image: "https://www.treehugger.com/thmb/WsGI9o0uPXy4CnoZcAgFkMTnfas=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/106055560-56a2ac893df78cf77278b056.jpg" )
Category.create(name: "Cardboard", video: "https://www.youtube.com/watch?v=Rlvd-dIAHCE", description: "cardboard egg cartons cardboard trays smooth cardboard (food and shoe boxes, tubes, file folders, cardboard from product packaging) pizza boxes (remove and discard soiled liner; recycle little plastic supporter with rigid plastics) paper cups (waxy lining ok if cups are empty and clean; recycle plastic lids with rigid plastics) corrugated cardboard boxes (flattened and tied together with sturdy twine)", image: "https://blog.cuyahogarecycles.org/wp-content/uploads/2018/11/cardboard_mainpost.jpg" )

Item.create(user_id: 1, name: "Pizza Box")
Item.create(user_id: 2, name: "Wine Bottle")

# Site.create(address: "2040 White Plains Rd", borough: "Bronx", 
#  "Staples", website: "www.staples.com", latitude: "40.85171272", longitude: "-73.86778588", rating: 5, accepted_items: "E-Waste", image: "https://assets1.chainstoreage.com/styles/content_sm/s3/teaser_image_481402.jpg?itok=d79TLBm-", hours: "9-5", twitter: "https://twitter.com/staples?lang=en", ig: "https://www.instagram.com/staples/?hl=en", facebook: "https://www.facebook.com/staples/")
# Site.create(address: "940 Madison Ave", borough: "Manhattan", name: "Apple Store", website: "https://www.apple.com/", latitude: "40.77326199", longitude: "-73.96436877", rating: 4, accepted_items: "E-Waste", image: "https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?202103011306", hours: "9-5", twitter: "https://twitter.com/apple?lang=en", ig: "https://www.instagram.com/apple/?hl=en", facebook: "https://www.facebook.com/apple/")

Comment.create(user_id: 1, site_id: 1, content: "Very clean location.")
Comment.create(user_id: 2, site_id: 2, content: "Efficient recycling process.")

CategorySite.create(category_id: 1, site_id: 1)
CategorySite.create(category_id: 2, site_id: 2)

ItemCategory.create(category_id: 1, item_id: 1)
ItemCategory.create(category_id: 2, item_id: 2)

UserSite.create(user_id: 1, site_id: 1)
UserSite.create(user_id: 2, site_id: 2)

