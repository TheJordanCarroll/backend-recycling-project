# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Oscar", username: "oscar123", password: "abc123", email: "oscarthegrouch@gmail.com", address: "123 Sesame Street", borough: "Manhattan", image: "https://thinkchristian-webassets.imgix.net/articleImages/2019/sesame-street-at-50-craft.jpg?crop=focalpoint&fit=crop&fp-x=0.5&fp-y=0.5&h=500&ixlib=php-1.1.0&q=80&w=800&s=fccd8dc1bbdd22d711ef73af868a65e5")
User.create(name: "Captain Planet", username: "captain123", password: "abc123", email: "captainplanet@gmail.com", address: "123 Planet Street", borough: "Brooklyn", image: "https://pbs.twimg.com/profile_images/939549969958051840/zs3ndSvV_400x400.jpg")

Category.create(name: "Paper", video: "https://www.youtube.com/watch?v=RR_218EtLJU", description: "newspapers, magazines, catalogs, phone books, mixed paper white and colored paper (lined, copier, computer; staples are ok) mail and envelopes (any color; window envelopes are ok) receipts paper bags (handles ok) wrapping paper soft-cover books (phone books, paperbacks, comics, etc.; no spiral bindings) (schools should follow their school book recycling procedures)")
Category.create(name: "Cardboard", video: "https://www.youtube.com/watch?v=Rlvd-dIAHCE", description: "cardboard egg cartons cardboard trays smooth cardboard (food and shoe boxes, tubes, file folders, cardboard from product packaging) pizza boxes (remove and discard soiled liner; recycle little plastic supporter with rigid plastics) paper cups (waxy lining ok if cups are empty and clean; recycle plastic lids with rigid plastics) corrugated cardboard boxes (flattened and tied together with sturdy twine)")

Item.create(user_id: 1, name: "Pizza Box")
Item.create(user_id: 2, name: "Wine Bottle")

Site.create(address: "2040 White Plains Rd", borough: "Bronx", name: "Staples", website: "www.staples.com", latitude: "40.85171272", longitude: "-73.86778588", rating: 5, accepted_items: "E-Waste", image: "https://assets1.chainstoreage.com/styles/content_sm/s3/teaser_image_481402.jpg?itok=d79TLBm-", hours: "9-5", twitter: "https://twitter.com/staples?lang=en", ig: "https://www.instagram.com/staples/?hl=en", facebook: "https://www.facebook.com/staples/")
Site.create(address: "940 Madison Ave", borough: "Manhattan", name: "Apple Store", website: "https://www.apple.com/", latitude: "40.77326199", longitude: "-73.96436877", rating: 4, accepted_items: "E-Waste", image: "https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?202103011306", hours: "9-5", twitter: "https://twitter.com/apple?lang=en", ig: "https://www.instagram.com/apple/?hl=en", facebook: "https://www.facebook.com/apple/")

Comment.create(user_id: 1, site_id: 1, content: "Very clean location.")
Comment.create(user_id: 2, site_id: 2, content: "Efficient recycling process.")

CategorySite.create(category_id: 1, site_id: 1)
CategorySite.create(category_id: 2, site_id: 2)

ItemCategory.create(category_id: 1, item_id: 1)
ItemCategory.create(category_id: 2, item_id: 2)

UserSite.create(user_id: 1, site_id: 1)
UserSite.create(user_id: 2, site_id: 2)

