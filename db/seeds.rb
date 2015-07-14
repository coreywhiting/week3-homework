# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Place.delete_all

#:title, :url, :admission_price, :description

Place.create(:title => "United Center", :url => "http://unitedcenter.com", :admission_price => 6000, :description => "Where the Bulls play")
Place.create(:title => "Wrigley Field", :url => "http://wrigleyfield.com", :admission_price => 1200, :description => "Where the Cubss play")
Place.create(:title => "Union Station", :url => "http://unionstation.com", :admission_price => 0, :description => "Train station")
Place.create(:title => "Lincoln Park Zoo", :url => "http://lpzoo.com", :admission_price => 0, :description => "Free public zoo in Lincoln Park")
Place.create(:title => "Museum of Science and Indusry", :url => "http://museumofsi.com", :admission_price => 800, :description => "Great museum in Hyde Park")