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
:price => "6000",
:address => "401 N Wabash Ave Unit 89A",
:city => "Chicago",
:state => "IL",
:zip_code => "60611",
:has_laundry => "true",
:has_parking => "false",
:image_url => "http://p.rdcpix.com/v01/lda2b8844-m0m.jpg",
:user_id => "1",
:date_available => "1/1/2014",
:is_available => "true"

 }, 
{
:id => "2",
:name => "*New* Gigantic Duplex 4 Bedroom, 2 Bath in Logan Square, Available Now ",
:description => "This HUGE 1500 Square Feet, 3 bedroom, 1-1/2 bath apartment is ON Douglas Park (nice view). It comes with a brick fireplace, central air conditioning, formal dining room, 18' x 10' master bedroom, wall sconces, hardwood floors, ceiling fans, dishwasher, walk-in pantry, appliances, and ceramic kitchen and baths. Laundry is also in the building. Monthly rent is $1,095. NO SECURITY DEPOSIT pkrent.com 773-227-3800.",
:beds => "3",
:baths => "1.5",
:square_feet => "2600",
:price => "2200",
:address => "1442 N Astor St",
:city => "Chicago",
:state => "IL",
:zip_code => "60610",
:has_laundry => "true",
:has_parking => "true",
:image_url => "http://p.rdcpix.com/v01/le6482e44-m2m.jpg",
:user_id => "1",
:date_available => "1/1/2014",
:is_available => "true"

 }, 
{
:id => "3",
:name => "2 BED/2 BATH~Washer/Dryer in unit Updated Appliances ",
:description => "This property offers vintage charm on the outside while featuring contemporary luxury inside. The building features newly remodeled units, many with scenic lake views creating a comfortable living experience for anyone. Situated on Sheridan Road just steps from Lake Michigan, high-rise living has never been more convenient. Located near the CTA Red Line and multiple bus routes makes it an excellent spot for getting around the city. Being in the heart of Uptown makes living at the here a perfect spot for accessing night life at places like the Green Mill, the Aragon Ballroom or the Riviera Theatre.",
:beds => "2",
:baths => "2",
:square_feet => "2200",
:price => "800",
:address => "209 E Lake Shore D",
:city => "Chicago",
:state => "IL",
:zip_code => "60611",
:has_laundry => "false",
:has_parking => "false",
:image_url => "http://p.rdcpix.com/v01/l7d248844-w0t.jpg",
:user_id => "2",
:date_available => "1/1/2014",
:is_available => "true"

 }, 
{
:id => "4",
:name => "Beautiful Studio in AQUA Utilities & amenities included! ",
:description => "Gleaming hardwood floors, beautiful vintage built-in dining room hutch. High ceilings custom lighting and tons of natural light. New kitchen has microwave, dishwasher, pantry, and a breakfast bar island. Two full bathrooms, large living room, den, laundry room and big bedrooms. No dogs please.",
:beds => "4",
:baths => "3",
:square_feet => "2800",
:price => "3600",
:address => "1427 N State Pkwy",
:city => "Chicago",
:state => "IL",
:zip_code => "60610",
:has_laundry => "true",
:has_parking => "false",
:image_url => "http://p.rdcpix.com/v01/lb7bd6744-m0t.jpg",
:user_id => "2",
:date_available => "1/1/2014",
:is_available => "true"

 }, 
{
:id => "5",
:name => "Beautiful Studio in the Loop~Granite~SS~W/D ",
:description => "Incredible 1 Bedroom Convertible in the best luxury high rise building in the Loop, just steps from awesome restaurants, shopping, and night life. Every amenity imaginable is right here.",
:beds => "1",
:baths => "1",
:square_feet => "650",
:price => "699",
:address => "44 E Elm St",
:city => "Chicago",
:state => "IL",
:zip_code => "60611",
:has_laundry => "false",
:has_parking => "false",
:image_url => "http://p.rdcpix.com/v01/l0b0f8d43-m0t.jpg",
:user_id => "2",
:date_available => "1/1/2014",
:is_available => "true"

 }, 
{
:id => "6",
:name => "Brand New 3 Bed/2 Bath - All the finishes you're looking for ",
:description => "This urban oasis is a Studio in the Loop mere steps from shopping, dining, the Theater District and nightlife. This wonderful unit features Stainless steel Frigidaire appliances, including Energy Star refrigerators and dishwashers, Energy-efficient washers and dryers, Cherry cabinets, sleek brushed chrome hardware and rich granite countertops in kitchens, Luxe maple cabinets and cultured marble countertops in baths, Toto toilets, Floor-to-ceiling windows with magnificent city views, Individual climate control with no seasonal restrictions and Generous closet space. This community has Fitness club with cardio suite and weight-training equipment, Steam and massage therapy rooms, Lushly landscaped green roof with resident terrace, pool, garden and grill areas, Stylish resident lounge with Wi-Fi, Cutting-edge media room with lounge furniture and large-screen projection system, High-tech business center and cozy library, Clubroom featuring billiards and flat-screen LCD TVs and Multipurpose room with flat-screen LCD TV and kitchen -- the perfect space for parties, yoga or fitness classes.",
:beds => "3",
:baths => "2",
:square_feet => "1500",
:price => "3000",
:address => "2041 N Howe St",
:city => "Chicago",
:state => "IL",
:zip_code => "60614",
:has_laundry => "true",
:has_parking => "true",
:image_url => "http://p.rdcpix.com/v01/l363d8d44-m0t.jpg",
:user_id => "2",
:date_available => "1/1/2014",
:is_available => "true"

 }, 
{
:id => "7",
:name => "Everything Included*2 Bed 1 Bath in Beautiful Lincoln Square for April ",
:description => "Captivating two bedroom, one bath in Andersonville walkup features separate living and dining rooms, new kitchen, dishwasher, new bath, hardwood floors, heat included, laundry, enclosed porch, fireplace, great closet spac",
:beds => "2",
:baths => "1",
:square_feet => "1800",
:price => "3210",
:address => "311 N Waller Ave",
:city => "Chicago",
:state => "IL",
:zip_code => "60644",
:has_laundry => "true",
:has_parking => "false",
:image_url => "http://p.rdcpix.com/v01/l90998644-m0m.jpg",
:user_id => "3",
:date_available => "1/1/2014",
:is_available => "true"

 }, 
{
:id => "8",
:name => "Gorgeous Amenities-Live on the Lake-One Month Free! Incredible Deal! ",
:description => "Plenty of privacy in this Bristol Bay End Unit with two car attached garage! Three Bedrooms, 2.5 Bathrooms and 2nd Floor Laundry! Open floor plan features 9' ceilings, a spacious living room & dining room. Beautiful kitchen has new cabinetry and flooring along with plenty of counter top space! Master suite has vaulted ceilings, private full bathroom, and 2 walk in closets. Spacious 2nd and 3rd bedrooms with plenty of closet space. All new carpet and freshly painted throughout. Clubhouse, fitness center and pool membership included. ",
:beds => "2",
:baths => "1",
:square_feet => "800",
:price => "2999",
:address => "10652 S Avenue N",
:city => "Chicago",
:state => "IL",
:zip_code => "60617",
:has_laundry => "false",
:has_parking => "false",
:image_url => "http://p.rdcpix.com/v01/ld89f5944-w0t.jpg",
:user_id => "3",
:date_available => "1/1/2014",
:is_available => "true"

 }, 
{
:id => "9",
:name => "LARGE, 1.5 Bath, Dining rm NO SEC DEPOSIT ",
:description => "Great price on this beautiful industrial style loft in the South Loop! This fantastic unit features beautiful sealed concrete floors, huge living/bedroom square footage with ample closet space, floor to ceiling windows exposing great views, beautiful new kitchens with new black appliances, w/d in unit, and parking is available. All of this in a brand new full amenity building with 24 hour doorman, on site management, 24 hour fitness center, roofdeck, and business center. Heat and A/C included! Make this awesome loft your new home!",
:beds => "3",
:baths => "1.5",
:square_feet => "900",
:price => "1999",
:address => "9737 S Harvard Ave",
:city => "Chicago",
:state => "IL",
:zip_code => "60628",
:has_laundry => "false",
:has_parking => "false",
:image_url => "http://p.rdcpix.com/v01/l81ac9044-m0m.jpg",
:user_id => "3",
:date_available => "1/1/2014",
:is_available => "false"

 }, 
{
:id => "10",
:name => "New gas stove, new light fixtures. ",
:description => "This vintage courtyard building offers studios, one bedrooms, two bedrooms, and one three bedroom apartment. Some units offer a private balcony that overlooks the courtyard. Laundry is located on site for added convenience. Heat and Stove Gas is included in rent, electric is not. The Belmont EL Station on the CTA's Red, Brown and Purple Line is an short walk away. The Halsted Bus, Clark Bus, Belmont Bus, Broadway Bus, and Diversey Bus are all steps away. ",
:beds => "4",
:baths => "3",
:square_feet => "3600",
:price => "3600",
:address => "1011 N Wolcott Ave",
:city => "Chicago",
:state => "IL",
:zip_code => "60622",
:has_laundry => "true",
:has_parking => "true",
:image_url => "http://p.rdcpix.com/v02/l4a707744-w0m.jpg",
:user_id => "3",
:date_available => "1/1/2014",
:is_available => "true"

 } 
 ]
all_User = [ 
{ 
:first_name => "John",
:last_name => "Kennedy",
:password => "password",
:password_confirmation => "password",
:email => "John.Kennedy@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60606",
:picture_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/John_F._Kennedy%2C_White_House_photo_portrait%2C_looking_up.jpg/220px-John_F._Kennedy%2C_White_House_photo_portrait%2C_looking_up.jpg",
:user_type => "Manager",
:phone_number => "123-456-7890",
:website => "http://www.JohnKennedy.com/website"

 }, 
{
:first_name => "Lebron",
:last_name => "James",
:password => "password",
:password_confirmation => "password",
:email => "Lebron.James@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60657",
:picture_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/LeBron_James_vs_Washington_3-30-11.jpg/235px-LeBron_James_vs_Washington_3-30-11.jpg",
:user_type => "Manager",
:phone_number => "123-456-7890",
:website => "http://www.LebronJames.com/website"

 }, 
{
:first_name => "Donald",
:last_name => "Trump",
:password => "password",
:password_confirmation => "password",
:email => "Donald.Trump@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60634",
:picture_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Donald_Trump_by_Gage_Skidmore.jpg/250px-Donald_Trump_by_Gage_Skidmore.jpg",
:user_type => "Manager",
:phone_number => "123-456-7890",
:website => "http://www.DonaldTrump.com/website"

 }, 
{
:first_name => "Aziz",
:last_name => "Ansari",
:password => "password",
:password_confirmation => "password",
:email => "Aziz.Ansari@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60606",
:picture_url => "http://www.pastemagazine.com/blogs/lists/assets_c/2013/11/comicsansari-thumb-400x265-96202.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "http://www.AzizAnsari.com/website"

 }, 
{
:first_name => "Louie",
:last_name => "C.K.",
:password => "password",
:password_confirmation => "password",
:email => "Louie.C.K.@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60601",
:picture_url => "http://ia.media-imdb.com/images/M/MV5BMTM4OTkwNzg3NF5BMl5BanBnXkFtZTcwMjc5NjcyNw@@._V1_SX214_CR0,0,214,317_.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "http://www.LouieC.K..com/website"

 }, 
{
:first_name => "Jerry",
:last_name => "Seinfeld",
:password => "password",
:password_confirmation => "password",
:email => "Jerry.Seinfeld@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60610",
:picture_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Jerry_Seinfeld_by_David_Shankbone.jpg/220px-Jerry_Seinfeld_by_David_Shankbone.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "http://www.JerrySeinfeld.com/website"

 }, 
{
:first_name => "Nick",
:last_name => "Kroll",
:password => "password",
:password_confirmation => "password",
:email => "Nick.Kroll@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60603",
:picture_url => "http://ia.media-imdb.com/images/M/MV5BMjI4NTUwODA4OF5BMl5BanBnXkFtZTcwMjk3MzU0Ng@@._V1_SY317_CR3,0,214,317_.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "http://www.NickKroll.com/website"

 }, 
{
:first_name => "Key",
:last_name => "Peele",
:password => "password",
:password_confirmation => "password",
:email => "Key.Peele@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60634",
:picture_url => "http://www.pastemagazine.com/blogs/lists/assets_c/2013/11/keyandpeelemain-thumb-400x299-95779.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "http://www.KeyPeele.com/website"

 }, 
{
:first_name => "Andrew",
:last_name => "WK",
:password => "password",
:password_confirmation => "password",
:email => "Andrew.WK@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60060",
:picture_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Andrew_WK.jpg/220px-Andrew_WK.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "http://www.AndrewWK.com/website"

 }, 
{
:first_name => "Saul",
:last_name => "Goodman",
:password => "password",
:password_confirmation => "password",
:email => "Saul.Goodman@gmail.com",
:address => "123 N Lane Street",
:city => "Chicago",
:state => "IL",
:zip_code => "60606",
:picture_url => "http://upload.wikimedia.org/wikipedia/en/thumb/1/16/Saul_Goodman.jpg/240px-Saul_Goodman.jpg",
:user_type => "Tenant",
:phone_number => "123-456-7890",
:website => "http://www.SaulGoodman.com/website"

 } 
 ]
all_TenantOf = [ 
{ 
:user_id => "4",
:property_id => "1",
:is_active => "true"

 }, 
{
:user_id => "5",
:property_id => "2",
:is_active => "true"

 }, 
{
:user_id => "6",
:property_id => "3",
:is_active => "true"

 }, 
{
:user_id => "7",
:property_id => "4",
:is_active => "true"

 }, 
{
:user_id => "8",
:property_id => "5",
:is_active => "false"

 }, 
{
:user_id => "9",
:property_id => "4",
:is_active => "true"

 }, 
{
:user_id => "10",
:property_id => "5",
:is_active => "true"

 } 
 ]
all_Message = [ 
{ 
:title => "Broken Sink",
:message => "Hey, my sink broke, so you could you like fix it dude",
:message_type => "UTIL",
:user_id => "4",
:created_at => "3/8/2014 8:29:04 PM",
:updated_at => "3/8/2014 8:29:04 PM"

 }, 
{
:title => "RE: Broken Sink",
:message => "Yea, I'll take care of it Tuesday",
:message_type => "UTIL",
:user_id => "1",
:created_at => "3/9/2014 8:29:04 PM",
:updated_at => "3/9/2014 8:29:04 PM"

 }, 
{
:title => "RE: Broken Sink",
:message => "Thanks",
:message_type => "UTIL",
:user_id => "4",
:created_at => "3/10/2014 8:29:04 PM",
:updated_at => "3/10/2014 8:29:04 PM"

 }, 
{
:title => "RE: Broken Sink",
:message => "Its complete, let me know if there is any problems",
:message_type => "UTIL",
:user_id => "1",
:created_at => "3/11/2014 8:29:04 PM",
:updated_at => "3/11/2014 8:29:04 PM"

 }, 
{
:title => "Rent is Due",
:message => "Rent is due in three days",
:message_type => "RENT",
:user_id => "2",
:created_at => "3/9/2014 8:29:04 PM",
:updated_at => "3/9/2014 8:29:04 PM"

 }, 
{
:title => "RE: Rent is due",
:message => "I'm going to be a bit late.. Sorry",
:message_type => "RENT",
:user_id => "6",
:created_at => "3/10/2014 8:29:04 PM",
:updated_at => "3/10/2014 8:29:04 PM"

 }, 
{
:title => "RE: Rent is Due",
:message => "check your account, its in there",
:message_type => "RENT",
:user_id => "7",
:created_at => "3/11/2014 8:29:04 PM",
:updated_at => "3/11/2014 8:29:04 PM"

 } 
 ]
all_Application = [ 
{ 
:user_id => "4",
:property_id => "1",
:price_offer => "2300",
:conditions => ""

 }, 
{
:user_id => "5",
:property_id => "2",
:price_offer => "2100",
:conditions => ""

 }, 
{
:user_id => "6",
:property_id => "3",
:price_offer => "700",
:conditions => ""

 }, 
{
:user_id => "7",
:property_id => "4",
:price_offer => "2500",
:conditions => ""

 }, 
{
:user_id => "8",
:property_id => "5",
:price_offer => "699",
:conditions => ""

 }, 
{
:user_id => "9",
:property_id => "4",
:price_offer => "2500",
:conditions => ""

 }, 
{
:user_id => "10",
:property_id => "5",
:price_offer => "699",
:conditions => ""

 }, 
{
:user_id => "4",
:property_id => "2",
:price_offer => "2400",
:conditions => ""

 }, 
{
:user_id => "4",
:property_id => "3",
:price_offer => "1900",
:conditions => ""

 } 
 ]
all_Recipient = [ 
{ 
:user_id => "1",
:message_id => "1"

 }, 
{
:user_id => "4",
:message_id => "2"

 }, 
{
:user_id => "1",
:message_id => "3"

 }, 
{
:user_id => "4",
:message_id => "4"

 }, 
{
:user_id => "6",
:message_id => "5"

 }, 
{
:user_id => "7",
:message_id => "5"

 }, 
{
:user_id => "2",
:message_id => "6"

 }, 
{
:user_id => "2",
:message_id => "7"

 } 
 ]
all_Payment = [ 
{ 
:user_id => "4",
:property_id => "1",
:amount => "2300",
:bank_routing_number => "10101010",
:bank_account_number => "12341243",
:account_type => "Checking"

 }, 
{
:user_id => "5",
:property_id => "2",
:amount => "2100",
:bank_routing_number => "10101010",
:bank_account_number => "12341243",
:account_type => "Checking"

 }, 
{
:user_id => "6",
:property_id => "3",
:amount => "700",
:bank_routing_number => "10101010",
:bank_account_number => "12341243",
:account_type => "Checking"

 }, 
{
:user_id => "7",
:property_id => "4",
:amount => "2500",
:bank_routing_number => "10101010",
:bank_account_number => "12341243",
:account_type => "Checking"

 }, 
{
:user_id => "8",
:property_id => "5",
:amount => "699",
:bank_routing_number => "10101010",
:bank_account_number => "12341243",
:account_type => "Checking"

 }, 
{
:user_id => "9",
:property_id => "4",
:amount => "2500",
:bank_routing_number => "10101010",
:bank_account_number => "12341243",
:account_type => "Checking"

 }, 
{
:user_id => "10",
:property_id => "5",
:amount => "699",
:bank_routing_number => "10101010",
:bank_account_number => "12341243",
:account_type => "Savings"

 }, 
{
:user_id => "4",
:property_id => "2",
:amount => "2400",
:bank_routing_number => "10101010",
:bank_account_number => "12341243",
:account_type => "Savings"

 }, 
{
:user_id => "4",
:property_id => "3",
:amount => "1900",
:bank_routing_number => "10101010",
:bank_account_number => "12341243",
:account_type => "Savings"

 } 
 ]

Property.destroy_all
User.destroy_all
TenantOf.destroy_all
Message.destroy_all
Application.destroy_all
Recipient.destroy_all
Payment.destroy_all

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
n.date_available = all[:date_available]
n.is_available = all[:is_available]
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
n.user_id = all[:user_id]
n.property_id = all[:property_id]
n.is_active = all[:is_active]
n.save
nC += 1
end

nC = 1
all_Message.each do |all| 
n = Message.new
n.id = nC
n.title = all[:title]
n.message = all[:message]
n.message_type = all[:message_type]
n.user_id = all[:user_id]
n.created_at = all[:created_at]
n.updated_at = all[:updated_at]
n.save
nC += 1
end

nC = 1
all_Application.each do |all| 
n = Application.new
n.id = nC
n.user_id = all[:user_id]
n.property_id = all[:property_id]
n.price_offer = all[:price_offer]
n.conditions = all[:conditions]
n.save
nC += 1
end

nC = 1
all_Recipient.each do |all| 
n = Recipient.new
n.id = nC
n.user_id = all[:user_id]
n.message_id = all[:message_id]
n.save
nC += 1
end

nC = 1
all_Payment.each do |all| 
n = Payment.new
n.id = nC
n.user_id = all[:user_id]
n.property_id = all[:property_id]
n.amount = all[:amount]
n.bank_routing_number = all[:bank_routing_number]
n.bank_account_number = all[:bank_account_number]
n.account_type = all[:account_type]
n.save
nC += 1
end


