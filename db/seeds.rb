#!/bin/env ruby 
# encoding: utf-8

all_Property = [ 
{ 
:id => "1",
:name => "* 4/1 * Sedgwick & Armitage 1 Bed *** Heat, Gas, Water, Directv & Int ",
:description => "2 BED/2 BATH in the heart of the South Loop with polished concrete floors. This awesome unit features beautiful huge living/bedroom square footage with ample closet space, floor to ceiling windows exposing great views, beautiful new kitchens with new black appliances, w/d in unit, and parking is available. All of this in a brand new full amenity building with 24 hour doorman, on site management, 24 hour fitness center, roofdeck, and business center. $35 utility fee.",
:beds => "2",
:baths => "2",
:square_feet => "1600",
:price => "2500",
:address => "14th at State",
:city => "Chicago",
:state => "IL",
:zip_code => "60606",
:has_laundry => "true",
:has_parking => "false",
:image_url => "http://lh4.ggpht.com/_dlkAw43cLC0/SRxCyCz7O4I/AAAAAAAAAeo/9R7BlywFLxg/s800/34-domehouse-thumb.jpg",
:user_id => "1"

 }, 
{
:id => "2",
:name => "*New* Gigantic Duplex 4 Bedroom, 2 Bath in Logan Square, Available Now ",
:description => "This HUGE 1500 Square Feet, 3 bedroom, 1-1/2 bath apartment is ON Douglas Park (nice view). It comes with a brick fireplace, central air conditioning, formal dining room, 18' x 10' master bedroom, wall sconces, hardwood floors, ceiling fans, dishwasher, walk-in pantry, appliances, and ceramic kitchen and baths. Laundry is also in the building. Monthly rent is $1,095. NO SECURITY DEPOSIT pkrent.com 773-227-3800.",
:beds => "3",
:baths => "1.5",
:square_feet => "2600",
:price => "2200",
:address => "1514 S Albany",
:city => "Chicago",
:state => "IL",
:zip_code => "60659",
:has_laundry => "true",
:has_parking => "true",
:image_url => "http://cdn.frontdoor.com/dims4/SCRIPPS/dba8599/2147483647/thumbnail/630x473%5E/quality/75/?url=http%3A%2F%2Fcdn.frontdoor.com%2F93%2F1d%2F9c5b673147e9a42dd17b89f371a2%2F22714-kf-insight7.jpg",
:user_id => "1"

 }, 
{
:id => "3",
:name => "2 BED/2 BATH~Washer/Dryer in unit Updated Appliances ",
:description => "This property offers vintage charm on the outside while featuring contemporary luxury inside. The building features newly remodeled units, many with scenic lake views creating a comfortable living experience for anyone. Situated on Sheridan Road just steps from Lake Michigan, high-rise living has never been more convenient. Located near the CTA Red Line and multiple bus routes makes it an excellent spot for getting around the city. Being in the heart of Uptown makes living at the here a perfect spot for accessing night life at places like the Green Mill, the Aragon Ballroom or the Riviera Theatre.",
:beds => "2",
:baths => "2",
:square_feet => "2200",
:price => "800",
:address => "463 W Philly",
:city => "Chicago",
:state => "IL",
:zip_code => "60604",
:has_laundry => "false",
:has_parking => "false",
:image_url => "http://media.tumblr.com/8XzUlvJKGh3dmv1aYqS8Cocho1_500.jpg",
:user_id => "2"

 }, 
{
:id => "4",
:name => "Beautiful Studio in AQUA Utilities & amenities included! ",
:description => "Gleaming hardwood floors, beautiful vintage built-in dining room hutch. High ceilings custom lighting and tons of natural light. New kitchen has microwave, dishwasher, pantry, and a breakfast bar island. Two full bathrooms, large living room, den, laundry room and big bedrooms. No dogs please.",
:beds => "4",
:baths => "3",
:square_feet => "2800",
:price => "3600",
:address => "430 Sunset Blvd",
:city => "Miami",
:state => "FL",
:zip_code => "33137",
:has_laundry => "true",
:has_parking => "false",
:image_url => "http://www.designboom.com/tools/WPro/images/08-1decemberblogs/shell01.jpg",
:user_id => "2"

 }, 
{
:id => "5",
:name => "Beautiful Studio in the Loop~Granite~SS~W/D ",
:description => "Incredible 1 Bedroom Convertible in the best luxury high rise building in the Loop, just steps from awesome restaurants, shopping, and night life. Every amenity imaginable is right here.",
:beds => "1",
:baths => "1",
:square_feet => "650",
:price => "699",
:address => "945 Dwayne Wade Drive",
:city => "Miami",
:state => "FL",
:zip_code => "33147",
:has_laundry => "false",
:has_parking => "false",
:image_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Nakagin_Capsule_Tower_02.jpg/450px-Nakagin_Capsule_Tower_02.jpg",
:user_id => "2"

 }, 
{
:id => "6",
:name => "Brand New 3 Bed/2 Bath - All the finishes you're looking for ",
:description => "This urban oasis is a Studio in the Loop mere steps from shopping, dining, the Theater District and nightlife. This wonderful unit features Stainless steel Frigidaire appliances, including Energy Star refrigerators and dishwashers, Energy-efficient washers and dryers, Cherry cabinets, sleek brushed chrome hardware and rich granite countertops in kitchens, Luxe maple cabinets and cultured marble countertops in baths, Toto toilets, Floor-to-ceiling windows with magnificent city views, Individual climate control with no seasonal restrictions and Generous closet space. This community has Fitness club with cardio suite and weight-training equipment, Steam and massage therapy rooms, Lushly landscaped green roof with resident terrace, pool, garden and grill areas, Stylish resident lounge with Wi-Fi, Cutting-edge media room with lounge furniture and large-screen projection system, High-tech business center and cozy library, Clubroom featuring billiards and flat-screen LCD TVs and Multipurpose room with flat-screen LCD TV and kitchen -- the perfect space for parties, yoga or fitness classes.",
:beds => "3",
:baths => "2",
:square_feet => "1500",
:price => "3000",
:address => "460 W Pelican Ave",
:city => "Miami",
:state => "FL",
:zip_code => "33173",
:has_laundry => "true",
:has_parking => "true",
:image_url => "http://cdn.freshome.com/wp-content/uploads/2010/09/Letterbox-House-2.jpg",
:user_id => "2"

 }, 
{
:id => "7",
:name => "Everything Included*2 Bed 1 Bath in Beautiful Lincoln Square for April ",
:description => "Captivating two bedroom, one bath in Andersonville walkup features separate living and dining rooms, new kitchen, dishwasher, new bath, hardwood floors, heat included, laundry, enclosed porch, fireplace, great closet spac",
:beds => "2",
:baths => "1",
:square_feet => "1800",
:price => "3210",
:address => "2121 N Canal St",
:city => "Manhattan",
:state => "NY",
:zip_code => "10013",
:has_laundry => "true",
:has_parking => "false",
:image_url => "http://www.inhabitat.com/wp-content/uploads/birdisland-ed01.jpg",
:user_id => "3"

 }, 
{
:id => "8",
:name => "Gorgeous Amenities-Live on the Lake-One Month Free! Incredible Deal! ",
:description => "Plenty of privacy in this Bristol Bay End Unit with two car attached garage! Three Bedrooms, 2.5 Bathrooms and 2nd Floor Laundry! Open floor plan features 9' ceilings, a spacious living room & dining room. Beautiful kitchen has new cabinetry and flooring along with plenty of counter top space! Master suite has vaulted ceilings, private full bathroom, and 2 walk in closets. Spacious 2nd and 3rd bedrooms with plenty of closet space. All new carpet and freshly painted throughout. Clubhouse, fitness center and pool membership included. ",
:beds => "2",
:baths => "1",
:square_feet => "800",
:price => "2999",
:address => "4316 W Broadway",
:city => "Manhattan",
:state => "NY",
:zip_code => "10012",
:has_laundry => "false",
:has_parking => "false",
:image_url => "http://www.inhabitat.com/wp-content/uploads/slidinghousehooray.jpg",
:user_id => "3"

 }, 
{
:id => "9",
:name => "LARGE, 1.5 Bath, Dining rm NO SEC DEPOSIT ",
:description => "Great price on this beautiful industrial style loft in the South Loop! This fantastic unit features beautiful sealed concrete floors, huge living/bedroom square footage with ample closet space, floor to ceiling windows exposing great views, beautiful new kitchens with new black appliances, w/d in unit, and parking is available. All of this in a brand new full amenity building with 24 hour doorman, on site management, 24 hour fitness center, roofdeck, and business center. Heat and A/C included! Make this awesome loft your new home!",
:beds => "3",
:baths => "1.5",
:square_feet => "900",
:price => "1999",
:address => "234 N 48th St",
:city => "Brooklyn",
:state => "NY",
:zip_code => "11201",
:has_laundry => "false",
:has_parking => "false",
:image_url => "http://1.media.tumblr.com/9cyPFQbgCni5vc9vyAKFnOllo1_500.jpg",
:user_id => "3"

 }, 
{
:id => "10",
:name => "New gas stove, new light fixtures. ",
:description => "This vintage courtyard building offers studios, one bedrooms, two bedrooms, and one three bedroom apartment. Some units offer a private balcony that overlooks the courtyard. Laundry is located on site for added convenience. Heat and Stove Gas is included in rent, electric is not. The Belmont EL Station on the CTA's Red, Brown and Purple Line is an short walk away. The Halsted Bus, Clark Bus, Belmont Bus, Broadway Bus, and Diversey Bus are all steps away. ",
:beds => "4",
:baths => "3",
:square_feet => "3600",
:price => "3600",
:address => "1623 N Queens Blvd",
:city => "Queens",
:state => "NY",
:zip_code => "11360",
:has_laundry => "true",
:has_parking => "true",
:image_url => "http://freshome.com/wp-content/uploads/2007/10/toilet-house.jpg",
:user_id => "3"

 } 
 ]
all_User = [ 
{ 
:first_name => "John",
:last_name => "Kennedy",
:password => "thekennedy",
:password_confirmation => "thekennedy",
:email => "John.Kennedy@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60606",
:picture_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/John_F._Kennedy%2C_White_House_photo_portrait%2C_looking_up.jpg/220px-John_F._Kennedy%2C_White_House_photo_portrait%2C_looking_up.jpg",
:user_type => "Manager",
:phone_number => "123-456-7890",
:website => "www.google.com"

 }, 
{
:first_name => "Lebron",
:last_name => "James",
:password => "theking",
:password_confirmation => "theking",
:email => "Lebron.James@gmail.com",
:address => "123 N Lane Street",
:city => "Miami",
:state => "FL",
:zip_code => "33147",
:picture_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/LeBron_James_vs_Washington_3-30-11.jpg/235px-LeBron_James_vs_Washington_3-30-11.jpg",
:user_type => "Manager",
:phone_number => "123-456-7890",
:website => "www.google.com"

 }, 
{
:first_name => "Donald",
:last_name => "Trump",
:password => "thetrump",
:password_confirmation => "thetrump",
:email => "Donald.Trump@gmail.com",
:address => "123 N Lane Street",
:city => "Manhattan",
:state => "NY",
:zip_code => "10012",
:picture_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Donald_Trump_by_Gage_Skidmore.jpg/250px-Donald_Trump_by_Gage_Skidmore.jpg",
:user_type => "Manager",
:phone_number => "123-456-7890",
:website => "www.google.com"

 }, 
{
:first_name => "Aziz",
:last_name => "Ansari",
:password => "theAziz",
:password_confirmation => "theAziz",
:email => "Aziz.Ansari@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60606",
:picture_url => "http://www.pastemagazine.com/blogs/lists/assets_c/2013/11/comicsansari-thumb-400x265-96202.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "www.google.com"

 }, 
{
:first_name => "Louie",
:last_name => "C.K.",
:password => "theLouie",
:password_confirmation => "theLouie",
:email => "Louie.C.K.@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60606",
:picture_url => "http://ia.media-imdb.com/images/M/MV5BMTM4OTkwNzg3NF5BMl5BanBnXkFtZTcwMjc5NjcyNw@@._V1_SX214_CR0,0,214,317_.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "www.google.com"

 }, 
{
:first_name => "Jerry",
:last_name => "Seinfeld",
:password => "theJerry",
:password_confirmation => "theJerry",
:email => "Jerry.Seinfeld@gmail.com",
:address => "123 N Lane Street",
:city => "Miami",
:state => "FL",
:zip_code => "33147",
:picture_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Jerry_Seinfeld_by_David_Shankbone.jpg/220px-Jerry_Seinfeld_by_David_Shankbone.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "www.google.com"

 }, 
{
:first_name => "Nick",
:last_name => "Kroll",
:password => "theNick",
:password_confirmation => "theNick",
:email => "Nick.Kroll@gmail.com",
:address => "123 N Lane Street",
:city => "Miami",
:state => "FL",
:zip_code => "33147",
:picture_url => "http://ia.media-imdb.com/images/M/MV5BMjI4NTUwODA4OF5BMl5BanBnXkFtZTcwMjk3MzU0Ng@@._V1_SY317_CR3,0,214,317_.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "www.google.com"

 }, 
{
:first_name => "Key",
:last_name => "Peele",
:password => "theKey",
:password_confirmation => "theKey",
:email => "Key.Peele@gmail.com",
:address => "123 N Lane Street",
:city => "Manhattan",
:state => "NY",
:zip_code => "10012",
:picture_url => "http://www.pastemagazine.com/blogs/lists/assets_c/2013/11/keyandpeelemain-thumb-400x299-95779.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "www.google.com"

 }, 
{
:first_name => "Andrew",
:last_name => "WK",
:password => "theAndrew",
:password_confirmation => "theAndrew",
:email => "Andrew.WK@gmail.com",
:address => "123 N Lane Street",
:city => "Manhattan",
:state => "NY",
:zip_code => "10012",
:picture_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Andrew_WK.jpg/220px-Andrew_WK.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "www.google.com"

 }, 
{
:first_name => "Saul",
:last_name => "Goodman",
:password => "theSaul",
:password_confirmation => "theSaul",
:email => "Saul.Goodman@gmail.com",
:address => "123 N Lane Street",
:city => "Manhattan",
:state => "NY",
:zip_code => "10012",
:picture_url => "http://upload.wikimedia.org/wikipedia/en/thumb/1/16/Saul_Goodman.jpg/240px-Saul_Goodman.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "www.google.com"

 } 
 ]
all_TenantOf = [ 
{ 
:User_id => "4",
:Property_id => "1"

 }, 
{
:User_id => "5",
:Property_id => "2"

 }, 
{
:User_id => "6",
:Property_id => "3"

 }, 
{
:User_id => "7",
:Property_id => "4"

 }, 
{
:User_id => "8",
:Property_id => "5"

 }, 
{
:User_id => "9",
:Property_id => "4"

 }, 
{
:User_id => "10",
:Property_id => "5"

 } 
 ]

Property.destroy_all
User.destroy_all
TenantOf.destroy_all

nC = 1
all_Property.each do |all| 
n = Property.new
n.id = nC
n.name = all[:name]
n.description = all[:description]
n.beds = all[:beds]
n.baths = all[:baths]
n.square_feet = all[:square_feet]
n.price = all[:price]
n.address = all[:address]
n.city = all[:city]
n.state = all[:state]
n.zip_code = all[:zip_code]
n.has_laundry = all[:has_laundry]
n.has_parking = all[:has_parking]
n.image_url = all[:image_url]
n.user_id = all[:user_id]
n.save
nC += 1
end

nC = 1
all_User.each do |all| 
n = User.new
n.id = nC
n.first_name = all[:first_name]
n.last_name = all[:last_name]
n.password = all[:password]
n.password_confirmation = all[:password_confirmation]
n.email = all[:email]
n.address = all[:address]
n.city = all[:city]
n.state = all[:state]
n.zip_code = all[:zip_code]
n.picture_url = all[:picture_url]
n.user_type = all[:user_type]
n.phone_number = all[:phone_number]
n.website = all[:website]
n.save
nC += 1
end

nC = 1
all_TenantOf.each do |all| 
n = TenantOf.new
n.id = nC
n.User_id = all[:User_id]
n.Property_id = all[:Property_id]
n.save
nC += 1
end


