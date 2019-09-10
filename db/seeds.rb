# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: "Alessandra Vertrees")

Pin.create(
    [
        {
            name: "Washington Monument",
            longitude: -77.03238901390978,
            latitude: 38.913188059745586,
            description: "Construction on the Washington Monument began in 1848.",
            image_url: "https://docs.mapbox.com/mapbox-gl-js/assets/washington-monument.jpg"
        },
        {
            name: "Golden Gate Bridge",
            longitude: -122.414,
            latitude: 37.776,
            description: "This is the Golden Gate Bridge",
            image_url: "https://cdn.vox-cdn.com/uploads/chorus_image/image/54936725/shutterstock_529749235.1495670520.jpg"
        }
    ]    
  )

