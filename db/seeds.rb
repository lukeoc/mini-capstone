 Product.destroy_all
 Supplier.destroy_all

 Product.create ([
  {name: "camel", 
    price: "20.0", 
    image: "http://i.bnet.com/blogs/joe-camel1.jpg", 
    description: "Gently used camel for sale like new.", 
    in_stock: nil, 
    supplier_id: 1
    },
  {name: "Elephant", 
    price: "1000.0", 
    image: "https://s-media-cache-ak0.pinimg.com/236x/a5/b7/91/a5b791c45f001e51397bcdcfa7a2bd9e.jpg", 
    description: "Can fly if prompted", 
    in_stock: nil, 
    supplier_id: 2
    },
  {name: "Leo-Pard", 
    price: "100.0", 
    image: "http://cliparts.co/cliparts/piq/rbr/piqrbrGqT.jpg", 
    description: "it's a spotted beast", 
    in_stock: nil, 
    supplier_id: 3
    },
  {name: "worm", 
    price: "1.0", 
    image: "http://static.giantbomb.com/uploads/original/0/6127/187806-earthwormjim.jpg", 
    description: "More dangerous than it appears", 
    in_stock: nil, 
    supplier_id: 1
    },
  {name: "rat", 
    price: "12.0", 
    image: "http://www.picgifs.com/disney-gifs/disney-gifs/ratatouille/disney-graphics-ratatouille-536500.gif", 
    description: "amazing cook. trust us on this one.", 
    in_stock: nil, 
    supplier_id: 2
    },
  {name: "parrot", 
    price: "57.0", 
    image: "http://www.disneyclips.com/imagesnewb/images/may264.gif", 
    description: "kind of an a**hole tbh", 
    in_stock: nil, 
    supplier_id: 3
    },
  {name: "Fox!", 
    price: "30.0", 
    image: "http://www.proprofs.com/quiz-school/upload/yuiupload/1155784236.jpg", 
    description: "Fantastic fox. He is very tricky, buyer beware.", 
    in_stock: nil, 
    supplier_id: 1
    }
])

 # Product.create ([{
 #  name: "camel", 
 #    price: "20.0", 
 #    image: "http://i.bnet.com/blogs/joe-camel1.jpg", 
 #    description: "Gently used camel for sale like new.", 
 #    in_stock: nil, 
 #    supplier_id: 1
 #  }])

 Supplier.create ([
  {
    name: "alibaba",
    email: "ali@baba.com",
    phone: "777-574-7777"
    },
    {
      name: "doctor doolittle",
      email: "doctor@doo.com",
      phone: "888-574-8888"
      },
      {
        name: "mother earth",
        email: "mother@earth.com",
        phone: "111-574-1111"
        },
        ])