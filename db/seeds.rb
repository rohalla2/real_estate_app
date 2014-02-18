all_properties = [ { 
                  :name          	=> "Super Nice Condo House Apartment",
                  :description   	=> "This is the description of the house",
                  :beds          	=> 4,
                  :baths          	=> 3,
                  :squre_feet       => 2400,
                  :price          	=> 3000,
                  :address        	=> "1234 North Somewhere Street",
                  :city           	=> "Chicago",
                  :state          	=> "IL",
                  :zip_code        	=> 60606,
                  :has_laundry		=> true,
                  :image_url       	=> "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSbr3gqOWUqPOcaTyK6O863JRG4-2sYXX-3RhC0-GKKMXt81EP9yQ",
                  :has_parking      => true
                },
                 { 
                  :name          => "2BR Super Great view",
                  :description	           => "This is the description of the Second house",
                  :beds           => 2,
                  :baths          => 1,
                  :square_feet        => 1200,
                  :price          => 2000,
                  :address        => "1234 South Michigan Street",
                  :city           => "Chicago",
                  :state          => "IL",
                  :zip_code        => 60621,
                  :has_laundry  => true,
                  :image_url       => "http://blogs.smithsonianmag.com/paleofuture/files/2012/06/jetsons-googie.jpg",
                  :has_parking        => false
                }
            ]

Property.destroy_all
all_properties.each do |all_listings|
  l = Property.new
  l.name = all_listings[:name]
  l.description = all_listings[:description]
  l.beds = all_listings[:beds]
  l.baths = all_listings[:baths]
  l.square_feet = all_listings[:square_feet]
  l.price = all_listings[:price]
  l.address = all_listings[:address]
  l.city = all_listings[:city]
  l.state = all_listings[:state]
  l.zip_code = all_listings[:zip_code]
  l.has_laundry = all_listings[:has_laundry]
  l.has_parking = all_listings[:has_parking]
  l.image_url = all_listings[:image_url]
  l.save
end


