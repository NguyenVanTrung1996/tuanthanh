# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["interver", "pin", "lamp"]


categories.each do |c|
    category = Category.create(name: c)
    (1..10).each do |p|

        if(c == categories[0])
            product_image = "product_1"
        elsif(c == categories[1])
            product_image = "pin_1"
        else
            product_image = "den_1"
        end
        product = Product.create(category: category, name: product_image + " Fronius Symo M10." + c, price: 500000, discount: 20)
        product.image.attach(io: File.open('public/images/products/'+product_image+".jpg"), filename: product_image)
    end
end
