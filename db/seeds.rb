# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


puts "Destroying the precedent seeds..."
Color.destroy_all
Texture.destroy_all
Size.destroy_all
Length.destroy_all
Wig.destroy_all
User.destroy_all

puts "Creation of the users..."
asso = User.create!(email: "asso@mail.com", password: "wigwig", username: "asso", avatar_url: "https://media.istockphoto.com/id/1131162788/fr/vectoriel/rubans-de-sensibilisation-au-cancer-du-sein.jpg?s=612x612&w=0&k=20&c=Fopoaui4Di-AJT4x9FQcv3xgYsXtylV6oF0srTUt9yg=", admin: true)
User.create!(email: "els@mail.com", password: "wigwig", username: "els", avatar_url: "https://media.licdn.com/dms/image/C4E03AQEy2jt6Y_nijg/profile-displayphoto-shrink_800_800/0/1664207573519?e=2147483647&v=beta&t=3aPxmR9iooUWQiSfF_eTtDBP4QR5sg5GG-KEq689NmA")
User.create!(email: "vasiliki@mail.com", password: "wigwig", username: "vasiliki", avatar_url: "https://media.licdn.com/dms/image/C5603AQFtIc1Ql1g1pQ/profile-displayphoto-shrink_200_200/0/1599645006945?e=2147483647&v=beta&t=dmqu_MWfP-jdTneJLrFXMxrBYWqB_oo04nBFYJ-rZR0")
User.create!(email: "princy@mail.com", password: "wigwig", username: "princy", avatar_url: "https://media.licdn.com/dms/image/D4E03AQER3O8dl-DGIA/profile-displayphoto-shrink_800_800/0/1706011684644?e=2147483647&v=beta&t=192m5OmltKVvd_2_SHM0YynPn3bIIWe5-vxy7HcqVoY")

puts "Creation of colors..."
black = Color.create!(name: "Black", hexa: "#000000")
brown = Color.create!(name: "Brown", hexa: "#8C523B")
blonde = Color.create!(name: "Blonde", hexa: "#D2B196")
red = Color.create!(name: "Red", hexa: "#890B10")
grey = Color.create!(name: "Grey", hexa: "#95939E")

puts "Creation of textures..."
smooth = Texture.create!(name: "Smooth", icon: File.open("/home/princy/code/PrincyW/rekuperuk/app/assets/images/smooth.png"))
curly = Texture.create!(name: "Curly", icon: File.open("/home/princy/code/PrincyW/rekuperuk/app/assets/images/curly.png"))
frizzy = Texture.create!(name: "Frizzy", icon: File.open("/home/princy/code/PrincyW/rekuperuk/app/assets/images/frizzy.png"))

puts "Creation of sizes..."
small = Size.create!(name: "Small", icon: File.open("/home/princy/code/PrincyW/rekuperuk/app/assets/images/small.png"))
medium = Size.create!(name: "Medium", icon: File.open("/home/princy/code/PrincyW/rekuperuk/app/assets/images/medium.png"))
large = Size.create!(name: "Large", icon: File.path("/home/princy/code/PrincyW/rekuperuk/app/assets/images/large.png"))

puts "Creation of lengths..."
short = Length.create!(name: "Short", icon: File.open("/home/princy/code/PrincyW/rekuperuk/app/assets/images/short.png"))
bob = Length.create!(name: "Bob", icon: File.open("/home/princy/code/PrincyW/rekuperuk/app/assets/images/bob.png"))
mid_length = Length.create!(name: "Mid-length", icon: File.open("/home/princy/code/PrincyW/rekuperuk/app/assets/images/mid_long.png"))
long = Length.create!(name: "Long", icon: File.open("/home/princy/code/PrincyW/rekuperuk/app/assets/images/long.png"))

puts "Creation of wigs..."
image_path = "/home/princy/code/PrincyW/rekuperuk/app/assets/images/Wig 1 - front.jpg"

# Blonde wigs
puts "Creation of Blonde wigs..."
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: smooth, size: small, length: bob)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: smooth, size: small, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: smooth, size: small, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: smooth, size: small, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: smooth, size: large, length: bob)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: smooth, size: large, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: smooth, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: smooth, size: large, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: curly, size: small, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: curly, size: small, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: curly, size: small, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: curly, size: large, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: curly, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: blonde, texture: curly, size: large, length: mid_length)

# Red wigs
puts "Creation of Red wigs..."
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: smooth, size: small, length: bob)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: smooth, size: small, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: smooth, size: small, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: smooth, size: small, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: smooth, size: large, length: bob)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: smooth, size: large, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: smooth, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: smooth, size: large, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: curly, size: small, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: curly, size: small, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: curly, size: small, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: curly, size: large, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: curly, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: red, texture: curly, size: large, length: mid_length)

# Black Wigs
puts "Creation of Black wigs..."
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: smooth, size: small, length: bob)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: smooth, size: small, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: smooth, size: small, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: smooth, size: small, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: smooth, size: large, length: bob)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: smooth, size: large, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: smooth, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: smooth, size: large, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: curly, size: small, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: curly, size: small, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: curly, size: small, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: curly, size: large, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: curly, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: curly, size: large, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: frizzy, size: small, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: frizzy, size: small, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: frizzy, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: black, texture: frizzy, size: large, length: mid_length)

# Brown wigs
puts "Creation of Brown wigs..."
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: smooth, size: small, length: bob)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: smooth, size: small, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: smooth, size: small, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: smooth, size: small, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: smooth, size: large, length: bob)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: smooth, size: large, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: smooth, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: smooth, size: large, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: curly, size: small, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: curly, size: small, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: curly, size: small, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: curly, size: large, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: curly, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: curly, size: large, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: frizzy, size: small, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: frizzy, size: small, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: frizzy, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: brown, texture: frizzy, size: large, length: mid_length)

# Grey wigs
puts "Creation of Grey wigs..."
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: smooth, size: medium, length: bob)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: smooth, size: medium, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: smooth, size: medium, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: smooth, size: medium, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: smooth, size: large, length: bob)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: smooth, size: large, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: smooth, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: smooth, size: large, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: curly, size: medium, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: curly, size: medium, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: curly, size: medium, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: curly, size: large, length: long)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: curly, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: curly, size: large, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: frizzy, size: medium, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: frizzy, size: medium, length: mid_length)

Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: frizzy, size: large, length: short)
Wig.create!(photo1: File.open(image_path), photo2: File.open(image_path), photo3: File.open(image_path), user: asso, color: grey, texture: frizzy, size: large, length: mid_length)

puts "All seeds successfully updated! The End."
