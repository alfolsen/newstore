# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Webdevexam2018.Repo.insert!(%Webdevexam2018.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# Users and login
user = %{fname: "Test", lname: "Testmann"}
login = %{email: "test@mail.com", password_hash: "not implemented", isadmin: true}
Prios.Identity.create_user(user, login)

user = %{fname: "Test", lname: "Testmann"}
login = %{email: "test@mail.com", password_hash: "not implemented", isadmin: true}
Prios.Identity.create_user(user, login)
user = %{fname: "Test", lname: "Testmann"}
login = %{email: "test@mail.com", password_hash: "not implemented", isadmin: true}
Prios.Identity.create_user(user, login)

#Suppliers and products
supplier = %{company_name: "First Company", org_number: "NO123427", contact_person: "Tom Roger"}
Prios.Products.create_supplier(supplier)
product = %{name: "Red cup", price: 199, details: "Sturdy and handcrafted", tags: "red", inventory: 15}
Prios.Products.create_product(product, 1)
product = %{name: "Blue cup", price: 199, details: "Comfortable mug with heat control", tags: "blue", inventory: 5}
Prios.Products.create_product(product, 1)
#
supplier = %{company_name: "Second Company", org_number: "NO231427", contact_person: "Roger"}
Prios.Products.create_supplier(supplier)
product = %{name: "Greeb cup", price: 99, details: "Sturdy and handcrafted", tags: "green", inventory: 20}
Prios.Products.create_product(product, 2)
product = %{name: "Orange cup", price: 249, details: "Comfortable mug with heat control", tags: "orange", inventory: 7}
Prios.Products.create_product(product, 2)
