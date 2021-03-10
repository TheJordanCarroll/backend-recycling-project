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

# Category.create(name: "Paper", video: "https://www.youtube.com/watch?v=RR_218EtLJU", description: "newspapers, magazines, catalogs, phone books, mixed paper white and colored paper (lined, copier, computer; staples are ok) mail and envelopes (any color; window envelopes are ok) receipts paper bags (handles ok) wrapping paper soft-cover books (phone books, paperbacks, comics, etc.; no spiral bindings) (schools should follow their school book recycling procedures)", image: "https://www.treehugger.com/thmb/WsGI9o0uPXy4CnoZcAgFkMTnfas=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/106055560-56a2ac893df78cf77278b056.jpg" )
# Category.create(name: "Cardboard", video: "https://www.youtube.com/watch?v=Rlvd-dIAHCE", description: "cardboard egg cartons cardboard trays smooth cardboard (food and shoe boxes, tubes, file folders, cardboard from product packaging) pizza boxes (remove and discard soiled liner; recycle little plastic supporter with rigid plastics) paper cups (waxy lining ok if cups are empty and clean; recycle plastic lids with rigid plastics) corrugated cardboard boxes (flattened and tied together with sturdy twine)", image: "https://blog.cuyahogarecycles.org/wp-content/uploads/2018/11/cardboard_mainpost.jpg" )

Category.create(name: "Cardboard", video: "https://www.youtube.com/watch?v=Rlvd-dIAHCE&t=3s", description:  ["To find a public recycling bin in your borough, use the Recycling Sites tab on the nav bar above.", "Cardboard egg cartons", "Cardboard trays", "Smooth cardboard (food and shoe boxes, tubes, file folders, cardboard from product packaging)", "Pizza boxes (remove and discard soiled liner; recycle little plastic supporter with rigid plastics)", "Paper cups (waxy lining ok if cups are empty and clean; recycle plastic lids with rigid plastics)", "Corrugated cardboard boxes (flattened and tied together with sturdy twine)"], image: "https://www.homelectrical.com/sites/default/files/styles/original_image/public/images/product/blg/blg-cardboard_recycle_diy.jpg")
Category.create(name: "Paper", video: "https://www.youtube.com/watch?v=rn9UsSafWHI&t=5s", description: ["Newspapers, magazines, catalogs, phone books, mixed paper", "White and colored paper (lined, copier, computer; staples are ok)", "Mail and envelopes (any color; window envelopes are ok)", "Receipts", "Paper bags (handles ok)", "Wrapping paper", "Soft-cover books (phone books, paperbacks, comics, etc.; no spiral bindings) (schools should follow their school  book recycling procedures)", "To find a public recycling bin in your borough, use the Recycling Sites tab on the nav bar above."], image: "https://www.clipartkey.com/mpngs/m/207-2073943_transparent-paper-recycle-png.png" )
Category.create(name: "Cartons", video: "https://www.youtube.com/watch?v=BrdK-0Mmgig", description: [ "To find a public recycling bin in your borough, use the Recycling Sites tab on the nav bar above.", "Food and beverage cartons", "Drink boxes", "Aseptic packaging (holds beverages and food: juice, milk and non-dairy milk products, soup, etc.)"], image: "https://mydisposal.com/wp-content/uploads/2019/03/Carton_recycle_Multi_Carton.jpg")
Category.create(name: "Metal", video: "https://www.youtube.com/watch?v=0jdAF4rOQ8w", description: ["To find a public recycling bin in your borough, use the Recycling Sites tab on the nav bar above.", "Metal cans (soup, pet food, empty aerosol cans, empty paint cans, etc.)", "Aluminum foil and foil products (wrap and trays)", "Metal caps and lids", "Household metal items (wire hangers, pots, tools, curtain rods, small appliances that are mostly metal, certain vehicle license plates, etc.)", "Bulky metal items (large metal items, such as furniture, cabinets, large mostly metal appliances, DOES NOT INCLUDE electronic devices banned from disposal)"], image: "https://www.martinsrecycling.com/uploads/3/1/3/1/31310199/aluminum_orig.png")
Category.create(name: "Plastic (rigid plastic only)", video: "https://www.youtube.com/watch?v=zOy1wZvrEzE", description: ["To find a public recycling bin in your borough, use the Recycling Sites tab on the nav bar above.", "Rigid plastic is any item that is mostly plastic resin—it is relatively inflexible and maintains its shape or form when bent.", "Plastic bottles, jugs, and jars", "Rigid plastic caps and lids", "Rigid plastic food containers (yogurt, deli, hummus, dairy tubs, cookie tray inserts, “clamshell” containers, other rigid plastic take-out containers)", "Rigid plastic non-food containers (such as “blister-pack” and “clamshell” consumer packaging, acetate boxes)", "Rigid plastic housewares (flower pots, mixing bowls, plastic appliances, etc.)", "Bulk rigid plastic (crates, buckets, pails, furniture, large toys, large appliances, etc.)"], image: "https://www.oregonmetro.gov/sites/default/files/styles/facebook_preview/public/2019/06/13/plastic-containers-for-recycling.jpg?itok=h2UbJar3")
Category.create(name: "Glass", video: "https://www.youtube.com/watch?v=k4tuEXx1iFk", description: ["To find a public recycling bin in your borough, use the Recycling Sites tab on the nav bar above.", "Glass bottles and jars only."], image: "http://prc.org/app/uploads/2019/01/glass.png")
Category.create(name: "Electronics", video: "https://www.youtube.com/watch?v=ZxdhG1OhVng", description: ["To find an Electronics Drop-Off Location in your borough, use the Recycling Sites tab on the nav bar above.", "Electronics, such as computers, televisions, cellphones, power tools, electric razors and cameras, cannot be thrown away or recycled. They should be taken back to the retailers, which are required to accept them. They can also be taken to an Electronics Drop-Off Site."], image: "https://www.staples.com/sbd/cre/noheader/sustainability-center/recycling-services/electronics/images/electronics.png")
Category.create(name: "Textiles", video: "https://www.youtube.com/watch?v=BUcCadqAtvM", description: ["To find a Textile Drop-Off Location in your borough, use the Recycling Sites tab on the nav bar above.", "Textiles, such as fabrics, clothing, shoes, blankets, towels, coats, and bedding can be dropped off for textile recycling or donation at any of the Textile Drop-Off Locations in New York City."], image: "http://www.acua.com/uploadedImages/Site/Blog/ACUA_Blog/clothingpile.jpg")
Category.create(name: "Batteries", video: "https://www.youtube.com/watch?v=3azxJbOGBNE", description: ["Household alkaline batteries can be thrown away in the regular trash. Rechargeable batteries must be brought back to the retailers or brought to a SAFE Disposal Event. No batteries should ever go in recycling bins or bags."], image: " https://www.businessnhmagazine.com/UploadedFiles/Articles/7596/24454474_m.jpg")

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

