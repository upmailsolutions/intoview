# DEBUGGING INFORMATION.
# Here is a seed that simluates a dump from production.

properties = [
  {name: "Bay View Terrace", slug: "bay-view-terrace", description: "Beautiful end-of-terrace semi-detached house, with a view of the ocean."},
  {name: "Sunnydale Meadows", slug: "sunnydale-meadows", description: "Charming suburban home nestled in a vibrant community."},
  {name: "Crestwood Villa", slug: "crestwood-villa", description: "Elegant villa in a secluded, wooded area with modern amenities."},
  {name: "Maple Lane Cottage", slug: "maple-lane-cottage", description: "Cozy cottage with rustic charm, surrounded by lush greenery."},
  {name: "Riverside Loft", slug: "riverside-loft", description: "Contemporary loft apartment overlooking the tranquil river."},
  {name: "Hilltop Haven", slug: "hilltop-haven", description: "Spacious family home with panoramic hilltop views."},
  {name: "Oakwood Estates", slug: "oakwood-estates", description: "Luxurious estates in a prestigious neighborhood with oak-lined streets."},
  {name: "Gardenia Grove", slug: "gardenia-grove", description: "Picturesque bungalow with a blooming garden and modern comforts."},
  {name: "Silver Pine Apartments", slug: "silver-pine-apartments", description: "Stylish apartments set amongst towering pine trees."},
  {name: "Seaside Retreat", slug: "seaside-retreat", description: "Tranquil beachfront property with stunning sea views."},
  {name: "Mountain View Chalet", slug: "mountain-view-chalet", description: "Rustic chalet with breathtaking mountain vistas."},
  {name: "Urban Oasis", slug: "urban-oasis", description: "Modern city apartment with a peaceful, private garden."},
  {name: "Cobblestone Manor", slug: "cobblestone-manor", description: "Historic manor with timeless elegance and cobblestone paths."},
  {name: "Lakeside Breeze", slug: "lakeside-breeze", description: "Serene lakeside residence with refreshing breezes and scenic views."},
  {name: "Willow Wind Farms", slug: "willow-wind-farms", description: "Idyllic farmhouse with expansive fields and willow trees."},
  {name: "Coral Sands Condo", slug: "coral-sands-condo", description: "Luxury condo with pristine beach access and coral sand views."},
  {name: "Forest Edge Townhomes", slug: "forest-edge-townhomes", description: "Eco-friendly townhomes at the edge of a lush forest."},
  {name: "Golden Fields Estate", slug: "golden-fields-estate", description: "Majestic estate surrounded by golden fields and open skies."},
  {name: "Blue Harbor Villas", slug: "blue-harbor-villas", description: "Exclusive villas with private docks on a tranquil harbor."},
  {name: "Meadowbrook Residence", slug: "meadowbrook-residence", description: "Family-friendly residence in a peaceful meadow setting."},
  {name: "Skyline Heights", slug: "skyline-heights", description: "Sophisticated high-rise with stunning city skyline views."},
  {name: "Autumn Ridge Cottage", description: "Quaint cottage with spectacular autumn foliage, centered in an old-growth grove. (Sold)"},
  {name: "Sunset Bay Apartments", slug: "sunset-bay-apartments", description: "Apartments with unrivaled sunset views over the bay."},
  {name: "Rosewood Manor", slug: "rosewood-manor", description: "Grand manor house with intricate rosewood interiors."},
  {name: "Whispering Pines Cabin", slug: "whispering-pines-cabin", description: "Secluded cabin surrounded by whispering pine trees."},
  {name: "Emerald Lake House", slug: "emerald-lake-house", description: "Stunning lakeside house with emerald water vistas."}
]

# Simulates a db load
properties.each do |p|
  property = Property.new(p)
  property.save(:validate => false)
end
