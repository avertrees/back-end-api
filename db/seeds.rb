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
        },
        {
            id: 7,
            name: "kansas",
            longitude: -97.96209411261306,
            latitude: 36.63623222358859,
            description: "...description...",
            image_url: "https://images.unsplash.com/photo-1561599775-49806cd165c3?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=480&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=480"
        },
        {
            name: "iowa",
            longitude: -94.16710937500089,
            latitude: 43.93550624164516,
            description: "cold",
            image_url: "https://images.unsplash.com/photo-1495473351003-ba0a460f7961?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=480&ixid=eyJhcHBfaWQiOjF9&ixlib=rb-1.2.1&q=80&w=480",
        }
    ]    
  )


