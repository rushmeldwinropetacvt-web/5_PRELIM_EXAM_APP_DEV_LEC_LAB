Table categories {
  id integer [primary key]
  category_name varchar
}

Table customers {
  id integer [primary key]
  name varchar
  contact varchar
}

Table products {
  id integer [primary key]
  name varchar
  size varchar
  price decimal
  category_id integer
}

Table orders {
  id integer [primary key]
  customer_id integer
  order_date timestamp
  total_amount decimal
}

Table order_items {
  id integer [primary key]
  order_id integer
  product_id integer
  quantity integer
  price decimal
}

Ref: products.category_id >? categories.id // Many-to-one
Ref: orders.customer_id >? customers.id // Many-to-one
Ref: order_items.order_id >? orders.id // Many-to-one
Ref: order_items.product_id >? products.id // Many-to-one