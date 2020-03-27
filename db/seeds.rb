puts 'clering database'
LineItem.destroy_all
Cart.destroy_all
Car.destroy_all

puts 'creating cars'

Car.create!(
  name:"Lamborghini Huracán",
  sku:"ferr",
  photo1:"https://images.unsplash.com/photo-1536332016596-dc50468cbf41?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  photo2:"https://www.diariomotor.com/imagenes/picscache/1920x1600c/lamborghini-huracan-evo-2019-0119-014_1920x1600c.jpg",
  photo3:"https://www.diariomotor.com/imagenes/2019/01/lamborghini-huracan-evo-2019-0119-017.jpg",
  photo4:"https://www.diariomotor.com/imagenes/2019/01/lamborghini-huracan-evo-2019-0119-012.jpg",
  category:"luxury",
  brand: "lambo",
  price: "1",
  description: "BEAST MODE",
  )
Car.create!(
  name:"Ferrari",
  sku: "456",
  photo1:"https://images.unsplash.com/photo-1537758239362-40eda0496bc9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80",
  photo2:"https://cdn.bringatrailer.com/wp-content/uploads/2018/09/5ba040816a087_ferrari_testarossa_153618101566e7dff9f98764daECC-092_Ferrari-Testarossa_Sharplite-Media-22-940x516.jpg",
  photo3:"https://i.pinimg.com/originals/95/17/dc/9517dcaed558720715497a09eb750b3c.jpg",
  photo4:"https://i.wheelsage.org/image/format/picture/picture-preview-large/f/ferrari/testarossa/ferrari_testarossa_us-spec_27.jpg",
  category:"exclusive",
  brand:"ferrari",
  price: "1",
  description: "AGILITY",

  )
Car.create!(
  name:"LA FERRARI",
  sku:"ferra-2",
  photo1:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMHqAHV7utA-0hwNVZBf7T7hTwzPXyTJEHrxdEk6dnLrE9srvB",
  photo2:"https://www.diariomotor.com/imagenes/2013/05/ferrari-laferrari-fotos-dm-18.jpg",
  photo3:"https://wallpaperstock.net/wallpapers/thumbs1/36274.jpg",
  photo4:"https://i.ytimg.com/vi/E9R3_3czoDI/maxresdefault.jpg",
  category:"supercar",
  brand:"ferrari",
  price:"1",
  description: "BEAST MODE"

  )

Car.create!(
  name:"Lamborghini Aventador",
  sku:"lambo-22",
  photo1:"https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/model/aventador/aventador-s/Restyling/design-left.jpg",
  photo2:"https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/model/aventador/aventador-svj/Restyling/design-left.jpg",
  photo3:"https://cdn.classic-trader.com/I/images/340_255/vehicle_ad_standard_image_4483629755bea215f6e90a06fcbcb798.jpg",
  photo4:"https://i.pinimg.com/originals/66/19/ae/6619aee0750a216f5044daab2df464bc.jpg",
  category:"supercar",
  brand:"lambo ",
  price:"1",
  description: "AGILITY MONSTER"
  )

Car.create!(
  name:"Porsche Carrera Gt",
  sku:"pors-002",
  photo1:"https://assets.hemmings.com/uimage/63184506-770-0@2X.jpg?rev=1",
  photo2:"http://car-from-uk.com/ebay/carphotos/full/ebay668357.jpg",
  photo3:"https://collectorscarworld.com/wp-content/uploads/2018/10/2005-Porsche-Carrera-GT-7-768x512.jpg",
  photo4:"https://i.wheelsage.org/image/format/picture/picture-preview-large/p/porsche/carrera_gt/porsche_carrera_gt_7.jpg",
  category:"fancy",
  brand:"porsche",
  price:"1",
  description: "AGILITY MONSTER"

  )

Car.create!(
  name:"Lamborghini Urus",
  sku:"lam",
  photo1:"https://st.motortrend.com/uploads/sites/10/2018/06/2019-Lamborghini-Urus-Rosso-Anteros-front-three-quarter-01.jpg",
  photo2:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0fIvPgIW0u2YvCHVEnHg-kuiF6bZjSo7VsY-3cNIwixR2etyv",
  photo3:"https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/model/URUS/restyle/design-left.jpg",
  photo4:"http://www.newcarcars.com/wp-content/uploads/2019/01/2019-Lamborghini-Urus-Front-Wallpaper5.jpg",
  category:"beast",
  brand:"lambo",
  price:"1",
  description: "ALL-TERRAIN"

  )
Car.create!(
  name:"Aston Martin Vanquish",
  sku:"asto-1",
  photo1:"https://cdn.motor1.com/images/mgl/MEmVm/s3/2018-aston-martin-vanquish-s-coupe-review.jpg",
  photo2:"http://www.rsiauto.fr/images/ASTON-MARTIN/DB11/DB11-6.jpg",
  photo3:"https://i.ytimg.com/vi/8RrW71x651A/maxresdefault.jpg",
  photo4:"http://cdn.astonmartin.com/sitefinity/accessories/dbsinterior.jpg?sfvrsn=0",
  category:"beast",
  brand:"aston",
  price:"1",
  description: "STYLE GLAM"

  )
Car.create!(
  name:"Aston Martin Vantage",
  sku:"asto-2",
  photo1:"https://www.diariomotor.com/imagenes/picscache/1920x1600c/aston-martin-vantage-2018-24_1920x1600c.jpg",
  photo2:"https://www.autobild.es/sites/autobild.es/public/styles/main_element/public/dc/fotos/Aston-Rapide_S_2015_01.jpg?itok=0l9uA7kD",
  photo3:"https://www.diariomotor.com/imagenes/picscache/1920x1600c/aston-martin-rapide-ficha-1217-001_1920x1600c.jpg",
  photo4:"http://cdn.astonmartin.com/sitefinity/accessories/v12-vantage.jpg?sfvrsn=4",
  category:"beast",
  brand:"aston",
  price:"1",
  description: "ENGLISH GLAMOUR"
  )
# Car.create!(
#   name:"",
#   sku:"",
#   photo1:"",
 # photo2:"",
 #  photo3:"",
 #  photo4:"",
#   category:"",
#   brand:"",
# price:"",
# description: "1600 hp - AGILITY"

#   )
# Car.create!(
#   name:"",
#   sku:"",
#   photo1:"",
 # photo2:"",
 #  photo3:"",
 #  photo4:"",
#   category:"",
#   brand:"",
# price:"",
# description: "1600 hp - AGILITY"

#   )
puts 'finished'
