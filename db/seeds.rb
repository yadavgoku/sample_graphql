user1 = User.create(name: 'yadu', email: 'yadav@gmail.com')
user2 = User.create(name: 'rajin', email: 'rajin@gmail.com')
user3 = User.create(name: 'joy', email: 'joy@gmail.com')

order1 = Order.create(description: 'King of the Hill DVD', total: 100.00, user_id: user3.id)
order2 = Order.create(description: 'Mega Man 3 OST', total: 29.99, user_id: user3.id)
order3 = Order.create(description: 'Punch Out!! NES', total: 0.75, user_id: user2.id)

payment1 = Payment.create(order_id: order1.id, amount: 20.00)
payment2 = Payment.create(order_id: order2.id, amount: 1.00)
payment3 = Payment.create(order_id: order3.id, amount: 0.25)

user1 = User.create(name: 'yadu', email: 'yadav@gmail.com')
user2 = User.create(name: 'rajin', email: 'rajin@gmail.com')
user3 = User.create(name: 'joy', email: 'joy@gmail.com')

product1 = Product.create(name: 'iphone 6', price: 20000, stock: 20)
product2 = Product.create(name: 'iphone 5', price: 15000, stock: 20)
product3 = Product.create(name: 'iphone', price: 10000, stock: 20)