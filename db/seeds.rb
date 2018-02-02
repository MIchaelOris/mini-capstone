Supplier.create!([
  {name: "Big Bob's Novelty Emporium", email: "bigbob@emporium.com", phone_number: "312-555-0864"},
  {name: "Ted's Toys and Stuff", email: "ted@gmail.com", phone_number: "818-555-1357"},
  {name: "Phil's Van Down By the River", email: "van4627@yahoo.com", phone_number: "444-van-dude"}
])

Product.create!([
  {name: "Duke", price: "15.00", description: "", supplier_id: 1},
  {name: "GI Joe", price: "20.00", description: "", supplier_id: 3},
  {name: "Cobra Commander", price: "30.00", description: "", supplier_id: 2},
  {name: "Barbie", price: "10.00", description: "Girls classic doll", supplier_id: 1},
])

Image.create!([
  {url: "http://s32.postimg.org/6mceui22t/wnyx_mug.png", product_id: 1},
  {url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif", product_id: 2},
  {url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776", product_id: 3},
  {url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg", product_id: 4},
])


Category.create(name: "Action Figure")
Category.create(name: "Doll")
Category.create(name: "Ages 5-9")



CategoryProduct.create([
  
  {category_id: 1, product_id: 1},
  {category_id: 3, product_id: 1}
  {category_id: 1, product_id: 2}
  {category_id: 3, product_id: 2}
  {category_id: 1, product_id: 3}
  {category_id: 3, product_id: 3}
  {category_id: 2, product_id: 4}
  {category_id: 3, product_id: 4}

  ])