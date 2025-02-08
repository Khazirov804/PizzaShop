class AddProducts < ActiveRecord::Migration[8.0]
  def change
    Product.create(
      title: 'Margherita',
      description: 'Это пицца Маргарита',
      price: 350,
      size: 30,
      is_spicy: false,
      is_veg: false,
      is_best_offer: false,
      path_to_image: '/images/margherita.jpg'
    )

    Product.create(
      title: 'Meat',
      description: 'Это Мясная пицца',
      price: 440,
      size: 35,
      is_spicy: false,
      is_veg: false,
      is_best_offer: false,
      path_to_image: '/images/Meat.jpg'
    )

    Product.create(
      title: 'Mushroom',
      description: 'Это Грибная пицца',
      price: 400,
      size: 30,
      is_spicy: false,
      is_veg: true,
      is_best_offer: true,
      path_to_image: '/images/Mushroom.jpg'
    )
  end
end
