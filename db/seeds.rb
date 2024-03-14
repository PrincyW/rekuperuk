# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


puts "Destroying the precedent seeds..."
Wig.destroy_all
Color.destroy_all
Texture.destroy_all
Size.destroy_all
Length.destroy_all
User.destroy_all
Post.destroy_all
puts "Creation of the users..."

asso = User.create!(email: "asso@mail.com", password: "wigwig", username: "asso", avatar_url: "https://media.istockphoto.com/id/1131162788/fr/vectoriel/rubans-de-sensibilisation-au-cancer-du-sein.jpg?s=612x612&w=0&k=20&c=Fopoaui4Di-AJT4x9FQcv3xgYsXtylV6oF0srTUt9yg=", admin: true)
els = User.create!(email: "els@mail.com", password: "wigwig", username: "els", avatar_url: "https://media.licdn.com/dms/image/C4E03AQEy2jt6Y_nijg/profile-displayphoto-shrink_800_800/0/1664207573519?e=2147483647&v=beta&t=3aPxmR9iooUWQiSfF_eTtDBP4QR5sg5GG-KEq689NmA")
vasiliki = User.create!(email: "vasiliki@mail.com", password: "wigwig", username: "vasiliki", avatar_url: "https://media.licdn.com/dms/image/C5603AQFtIc1Ql1g1pQ/profile-displayphoto-shrink_200_200/0/1599645006945?e=2147483647&v=beta&t=dmqu_MWfP-jdTneJLrFXMxrBYWqB_oo04nBFYJ-rZR0")
princy = User.create!(email: "princy@mail.com", password: "wigwig", username: "princy", avatar_url: "https://media.licdn.com/dms/image/D4E03AQER3O8dl-DGIA/profile-displayphoto-shrink_800_800/0/1706011684644?e=2147483647&v=beta&t=192m5OmltKVvd_2_SHM0YynPn3bIIWe5-vxy7HcqVoY")

puts "Creation of colors..."
black = Color.create!(name: "Brun", hexa: "#000000")
brown = Color.create!(name: "Châtain", hexa: "#8C523B")
blonde = Color.create!(name: "Blonde", hexa: "#D2B196")
red = Color.create!(name: "Roux", hexa: "#890B10")
grey = Color.create!(name: "Sel et poivre", hexa: "#95939E")

puts "Creation of textures..."
smooth = Texture.create!(name: "Lisse", icon: "smooth.png")
curly = Texture.create!(name: "Bouclé", icon: "curly.png")
frizzy = Texture.create!(name: "Crépu", icon: "frizzy.jpg")

puts "Creation of sizes..."
small = Size.create!(name: "S", icon: "small.png")
medium = Size.create!(name: "M", icon: "medium.png")
large = Size.create!(name: "L", icon: "large.png")

puts "Creation of lengths..."
short = Length.create!(name: "Court", icon: "short.png")
bob = Length.create!(name: "Carré", icon: "bob.png")
mid_length = Length.create!(name: "Mi-long", icon: "mid_long.png")
long = Length.create!(name: "Long", icon: "long.png")

puts "Creation of wigs..."

# Blonde wigs
puts "Creation of Blonde wigs..."
Wig.create!(photo1: "6. face.jpg", photo2: "6. face.jpg", photo3: "6. face.jpg", user: asso, color: blonde, texture: smooth, size: small, length: bob)
Wig.create!(photo1: "8. face.jpg", photo2: "8. profile.jpg", photo3: "8. back.jpg", user: asso, color: blonde, texture: smooth, size: small, length: long)
Wig.create!(photo1: "5. face.jpg", photo2: "5. face.jpg", photo3: "5. face.jpg", user: asso, color: blonde, texture: smooth, size: small, length: short)
Wig.create!(photo1: "7. face.jpg", photo2: "7. profile.jpg", photo3: "7. back.jpg", user: asso, color: blonde, texture: smooth, size: small, length: mid_length)

Wig.create!(photo1: "6. face.jpg", photo2: "6. face.jpg", photo3: "6. face.jpg", user: asso, color: blonde, texture: smooth, size: large, length: bob)
Wig.create!(photo1: "8. face.jpg", photo2: "8. profile.jpg", photo3: "8. back.jpg", user: asso, color: blonde, texture: smooth, size: large, length: long)
Wig.create!(photo1: "5. face.jpg", photo2: "5. face.jpg", photo3: "5. face.jpg", user: asso, color: blonde, texture: smooth, size: large, length: short)
Wig.create!(photo1: "7. face.jpg", photo2: "7. profile.jpg", photo3: "7. back.jpg", user: asso, color: blonde, texture: smooth, size: large, length: mid_length)

Wig.create!(photo1: "2. face.jpg", photo2: "2. back.jpg", photo3: "2. back.jpg", user: asso, color: blonde, texture: curly, size: small, length: bob)
Wig.create!(photo1: "4. face.jpg", photo2: "4. back.jpg", photo3: "4. back.jpg", user: asso, color: blonde, texture: curly, size: small, length: long)
Wig.create!(photo1: "1. face.jpg", photo2: "1. face.jpg", photo3: "1. face.jpg", user: asso, color: blonde, texture: curly, size: small, length: short)
Wig.create!(photo1: "3. face.jpg", photo2: "3. profile.jpg", photo3: "3. profile.jpg", user: asso, color: blonde, texture: curly, size: small, length: mid_length)

Wig.create!(photo1: "2. face.jpg", photo2: "2. back.jpg", photo3: "2. back.jpg", user: asso, color: blonde, texture: curly, size: large, length: bob)
Wig.create!(photo1: "4. face.jpg", photo2: "4. back.jpg", photo3: "4. back.jpg", user: asso, color: blonde, texture: curly, size: large, length: long)
Wig.create!(photo1: "1. face.jpg", photo2: "1. face.jpg", photo3: "1. face.jpg", user: asso, color: blonde, texture: curly, size: large, length: short)
Wig.create!(photo1: "3. face.jpg", photo2: "3. profile.jpg", photo3: "3. profile.jpg", user: asso, color: blonde, texture: curly, size: large, length: mid_length)

# Red wigs
puts "Creation of Red wigs..."
Wig.create!(photo1: "14. face.jpg", photo2: "14. face.jpg", photo3: "14. face.jpg", user: asso, color: red, texture: smooth, size: small, length: bob)
Wig.create!(photo1: "16. face.jpg", photo2: "16. face.jpg", photo3: "16. face.jpg", user: asso, color: red, texture: smooth, size: small, length: long)
Wig.create!(photo1: "13. face.jpg", photo2: "13. face.jpg", photo3: "13. face.jpg", user: asso, color: red, texture: smooth, size: small, length: short)
Wig.create!(photo1: "15. face.jpg", photo2: "15. face.jpg", photo3: "15. face.jpg", user: asso, color: red, texture: smooth, size: small, length: mid_length)

Wig.create!(photo1: "14. face.jpg", photo2: "14. face.jpg", photo3: "14. face.jpg", user: asso, color: red, texture: smooth, size: large, length: bob)
Wig.create!(photo1: "16. face.jpg", photo2: "16. face.jpg", photo3: "16. face.jpg", user: asso, color: red, texture: smooth, size: large, length: long)
Wig.create!(photo1: "13. face.jpg", photo2: "13. face.jpg", photo3: "13. face.jpg", user: asso, color: red, texture: smooth, size: large, length: short)
Wig.create!(photo1: "15. face.jpg", photo2: "15. face.jpg", photo3: "15. face.jpg", user: asso, color: red, texture: smooth, size: large, length: mid_length)

Wig.create!(photo1: "10. face.jpg", photo2: "10. face.jpg", photo3: "10. face.jpg", user: asso, color: red, texture: curly, size: small, length: bob)
Wig.create!(photo1: "12. face.jpg", photo2: "12. profile.jpg", photo3: "12. back.jpg", user: asso, color: red, texture: curly, size: small, length: long)
Wig.create!(photo1: "9. face.jpg", photo2: "9. face.jpg", photo3: "9. face.jpg", user: asso, color: red, texture: curly, size: small, length: short)
Wig.create!(photo1: "11. face.jpg", photo2: "11. face.jpg", photo3: "11. face.jpg", user: asso, color: red, texture: curly, size: small, length: mid_length)

Wig.create!(photo1: "10. face.jpg", photo2: "10. face.jpg", photo3: "10. face.jpg", user: asso, color: red, texture: curly, size: large, length: bob)
Wig.create!(photo1: "12. face.jpg", photo2: "12. profile.jpg", photo3: "12. back.jpg", user: asso, color: red, texture: curly, size: large, length: long)
Wig.create!(photo1: "9. face.jpg", photo2: "9. face.jpg", photo3: "9. face.jpg", user: asso, color: red, texture: curly, size: large, length: short)
Wig.create!(photo1: "11. face.jpg", photo2: "11. face.jpg", photo3: "11. face.jpg", user: asso, color: red, texture: curly, size: large, length: mid_length)

# Black Wigs
puts "Creation of Black wigs..."
Wig.create!(photo1: "34. face.jpg", photo2: "34. face.jpg", photo3: "34. face.jpg", user: asso, color: black, texture: smooth, size: small, length: bob)
Wig.create!(photo1: "36. face.jpg", photo2: "36. face.jpg", photo3: "36. face.jpg", user: asso, color: black, texture: smooth, size: small, length: long)
Wig.create!(photo1: "33. face.jpg", photo2: "33. face.jpg", photo3: "33. face.jpg", user: asso, color: black, texture: smooth, size: small, length: short)
Wig.create!(photo1: "35. face.jpg", photo2: "35. face.jpg", photo3: "35. face.jpg", user: asso, color: black, texture: smooth, size: small, length: mid_length)

Wig.create!(photo1: "34. face.jpg", photo2: "34. face.jpg", photo3: "34. face.jpg", user: asso, color: black, texture: smooth, size: large, length: bob)
Wig.create!(photo1: "36. face.jpg", photo2: "36. face.jpg", photo3: "36. face.jpg", user: asso, color: black, texture: smooth, size: large, length: long)
Wig.create!(photo1: "33. face.jpg", photo2: "33. face.jpg", photo3: "33. face.jpg", user: asso, color: black, texture: smooth, size: large, length: short)
Wig.create!(photo1: "35. face.jpg", photo2: "35. face.jpg", photo3: "35. face.jpg", user: asso, color: black, texture: smooth, size: large, length: mid_length)

Wig.create!(photo1: "30. face.jpg", photo2: "30. face.jpg", photo3: "30. face.jpg", user: asso, color: black, texture: curly, size: small, length: bob)
Wig.create!(photo1: "32. face.jpg", photo2: "32. face.jpg", photo3: "32. face.jpg", user: asso, color: black, texture: curly, size: small, length: long)
Wig.create!(photo1: "29. face.jpg", photo2: "29. face.jpg", photo3: "29. face.jpg", user: asso, color: black, texture: curly, size: small, length: short)
Wig.create!(photo1: "31. face.jpg", photo2: "31. face.jpg", photo3: "31. face.jpg", user: asso, color: black, texture: curly, size: small, length: mid_length)

Wig.create!(photo1: "30. face.jpg", photo2: "30. face.jpg", photo3: "30. face.jpg", user: asso, color: black, texture: curly, size: large, length: bob)
Wig.create!(photo1: "32. face.jpg", photo2: "32. face.jpg", photo3: "32. face.jpg", user: asso, color: black, texture: curly, size: large, length: long)
Wig.create!(photo1: "29. face.jpg", photo2: "29. face.jpg", photo3: "29. face.jpg", user: asso, color: black, texture: curly, size: large, length: short)
Wig.create!(photo1: "31. face.jpg", photo2: "31. face.jpg", photo3: "31. face.jpg", user: asso, color: black, texture: curly, size: large, length: mid_length)

Wig.create!(photo1: "38. face.jpg", photo2: "38. profile.jpg", photo3: "38. profile.jpg", user: asso, color: black, texture: frizzy, size: small, length: bob)
Wig.create!(photo1: "37. face.jpg", photo2: "37. face.jpg", photo3: "37. face.jpg", user: asso, color: black, texture: frizzy, size: small, length: short)

Wig.create!(photo1: "38. face.jpg", photo2: "38. profile.jpg", photo3: "38. profile.jpg", user: asso, color: black, texture: frizzy, size: large, length: bob)
Wig.create!(photo1: "37. face.jpg", photo2: "37. face.jpg", photo3: "37. face.jpg", user: asso, color: black, texture: frizzy, size: large, length: short)

# Brown wigs
puts "Creation of Brown wigs..."
Wig.create!(photo1: "46. face.jpg", photo2: "46. face.jpg", photo3: "46. face.jpg", user: asso, color: brown, texture: smooth, size: small, length: bob)
Wig.create!(photo1: "48. face.jpg", photo2: "48. face.jpg", photo3: "48. face.jpg", user: asso, color: brown, texture: smooth, size: small, length: long)
Wig.create!(photo1: "45. face.jpg", photo2: "45. face.jpg", photo3: "45. face.jpg", user: asso, color: brown, texture: smooth, size: small, length: short)
Wig.create!(photo1: "47. face.jpg", photo2: "47. face.jpg", photo3: "47. face.jpg", user: asso, color: brown, texture: smooth, size: small, length: mid_length)

Wig.create!(photo1: "46. face.jpg", photo2: "46. face.jpg", photo3: "46. face.jpg", user: asso, color: brown, texture: smooth, size: large, length: bob)
Wig.create!(photo1: "48. face.jpg", photo2: "48. face.jpg", photo3: "48. face.jpg", user: asso, color: brown, texture: smooth, size: large, length: long)
Wig.create!(photo1: "45. face.jpg", photo2: "45. face.jpg", photo3: "45. face.jpg", user: asso, color: brown, texture: smooth, size: large, length: short)
Wig.create!(photo1: "47. face.jpg", photo2: "47. face.jpg", photo3: "47. face.jpg", user: asso, color: brown, texture: smooth, size: large, length: mid_length)

Wig.create!(photo1: "42. face.jpg", photo2: "42. face.jpg", photo3: "42. face.jpg", user: asso, color: brown, texture: curly, size: small, length: bob)
Wig.create!(photo1: "44. face.jpg", photo2: "44. profile.jpg", photo3: "44. profile.jpg", user: asso, color: brown, texture: curly, size: small, length: long)
Wig.create!(photo1: "41. profile.jpg", photo2: "41. profile.jpg", photo3: "41. profile.jpg", user: asso, color: brown, texture: curly, size: small, length: short)
Wig.create!(photo1: "43. face.jpg", photo2: "43. face.jpg", photo3: "43. face.jpg", user: asso, color: brown, texture: curly, size: small, length: mid_length)

Wig.create!(photo1: "42. face.jpg", photo2: "42. face.jpg", photo3: "42. face.jpg", user: asso, color: brown, texture: curly, size: large, length: bob)
Wig.create!(photo1: "44. face.jpg", photo2: "44. profile.jpg", photo3: "44. profile.jpg", user: asso, color: brown, texture: curly, size: large, length: long)
Wig.create!(photo1: "41. profile.jpg", photo2: "41. profile.jpg", photo3: "41. profile.jpg", user: asso, color: brown, texture: curly, size: large, length: short)
Wig.create!(photo1: "43. face.jpg", photo2: "43. face.jpg", photo3: "43. face.jpg", user: asso, color: brown, texture: curly, size: large, length: mid_length)

Wig.create!(photo1: "50. face.jpg", photo2: "50. face.jpg", photo3: "50. face.jpg", user: asso, color: brown, texture: frizzy, size: small, length: bob)
Wig.create!(photo1: "49. face.jpg", photo2: "49. face.jpg", photo3: "49. face.jpg", user: asso, color: brown, texture: frizzy, size: small, length: short)

Wig.create!(photo1: "50. face.jpg", photo2: "50. face.jpg", photo3: "50. face.jpg", user: asso, color: brown, texture: frizzy, size: large, length: bob)
Wig.create!(photo1: "49. face.jpg", photo2: "49. face.jpg", photo3: "49. face.jpg", user: asso, color: brown, texture: frizzy, size: large, length: short)

# Grey wigs
puts "Creation of Grey wigs..."
Wig.create!(photo1: "22. face.jpg", photo2: "22. face.jpg", photo3: "22. face.jpg", user: asso, color: grey, texture: smooth, size: medium, length: bob)
Wig.create!(photo1: "24. face.jpg", photo2: "24. face.jpg", photo3: "24. face.jpg", user: asso, color: grey, texture: smooth, size: medium, length: long)
Wig.create!(photo1: "21. face.jpg", photo2: "21. face.jpg", photo3: "21. face.jpg", user: asso, color: grey, texture: smooth, size: medium, length: short)
Wig.create!(photo1: "23. face.jpg", photo2: "23. face.jpg", photo3: "23. face.jpg", user: asso, color: grey, texture: smooth, size: medium, length: mid_length)

Wig.create!(photo1: "22. face.jpg", photo2: "22. face.jpg", photo3: "22. face.jpg", user: asso, color: grey, texture: smooth, size: large, length: bob)
Wig.create!(photo1: "24. face.jpg", photo2: "24. face.jpg", photo3: "24. face.jpg", user: asso, color: grey, texture: smooth, size: large, length: long)
Wig.create!(photo1: "21. face.jpg", photo2: "21. face.jpg", photo3: "21. face.jpg", user: asso, color: grey, texture: smooth, size: large, length: short)
Wig.create!(photo1: "23. face.jpg", photo2: "23. face.jpg", photo3: "23. face.jpg", user: asso, color: grey, texture: smooth, size: large, length: mid_length)

Wig.create!(photo1: "18. face.jpg", photo2: "18. face.jpg", photo3: "18. face.jpg", user: asso, color: grey, texture: curly, size: medium, length: bob)
Wig.create!(photo1: "20. profile.jpg", photo2: "20. back.jpg", photo3: "20. back.jpg", user: asso, color: grey, texture: curly, size: medium, length: long)
Wig.create!(photo1: "17. face.jpg", photo2: "17. face.jpg", photo3: "17. face.jpg", user: asso, color: grey, texture: curly, size: medium, length: short)
Wig.create!(photo1: "19. face.jpg", photo2: "19. face.jpg", photo3: "19. face.jpg", user: asso, color: grey, texture: curly, size: medium, length: mid_length)

Wig.create!(photo1: "18. face.jpg", photo2: "18. face.jpg", photo3: "18. face.jpg", user: asso, color: grey, texture: curly, size: large, length: bob)
Wig.create!(photo1: "20. profile.jpg", photo2: "20. back.jpg", photo3: "20. back.jpg", user: asso, color: grey, texture: curly, size: large, length: long)
Wig.create!(photo1: "17. face.jpg", photo2: "17. face.jpg", photo3: "17. face.jpg", user: asso, color: grey, texture: curly, size: large, length: short)
Wig.create!(photo1: "19. face.jpg", photo2: "19. face.jpg", photo3: "19. face.jpg", user: asso, color: grey, texture: curly, size: large, length: mid_length)

Wig.create!(photo1: "26. face.jpg", photo2: "26. face.jpg", photo3: "26. face.jpg", user: asso, color: grey, texture: frizzy, size: medium, length: bob)
Wig.create!(photo1: "25. face.jpg", photo2: "25. face.jpg", photo3: "25. face.jpg", user: asso, color: grey, texture: frizzy, size: medium, length: short)

Wig.create!(photo1: "26. face.jpg", photo2: "26. face.jpg", photo3: "26. face.jpg", user: asso, color: grey, texture: frizzy, size: large, length: bob)
Wig.create!(photo1: "25. face.jpg", photo2: "25. face.jpg", photo3: "25. face.jpg", user: asso, color: grey, texture: frizzy, size: large, length: short)


# Posts Creation
puts "Creation of posts..."
file = URI.open("https://images.unsplash.com/photo-1497634763913-2ea08bf9de5d?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
post1 = Post.create(title: "Rekuperuk saved my life", description: "I recently discovered [Wig Service Website] while searching for a solution to my hair loss struggles, and I couldn't be happier with my experience. From the moment I landed on their website, I was impressed by the range of options available and the user-friendly interface.", user: els)
post1.photo.attach(io: file, filename: "women-watching-sunset.jpg", content_type: "image/jpg")
post1.save

file = URI.open("https://images.unsplash.com/photo-1591035897819-f4bdf739f446?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
post2 = Post.create(title: "Battling hair loss is difficult", description: "
Battling alopecia is a deeply challenging journey, often fraught with emotional, psychological, and physical hurdles. For those facing this condition, every day can feel like a battle against self-doubt, anxiety, and societal pressures.", user: princy)
post2.photo.attach(io: file, filename: "women-in-flowers.jpg", content_type: "image/jpg")
post2.save


file = URI.open("https://images.unsplash.com/photo-1556159992-e189f8e50104?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
post3 = Post.create(title: "Donating my wig was a feeling of relief", description: "
Donating a wig to someone in need is an incredibly rewarding experience that fills the heart with warmth and joy. It's a gesture of compassion and empathy, a tangible way to make a positive impact on someone's life during a challenging time.
The act of donating a wig goes beyond simply giving away a physical item; it's about offering hope, confidence, and dignity to someone facing hair loss. For those grappling with conditions like alopecia, chemotherapy, or other medical treatments, receiving a wig can be life-changing.", user: vasiliki)
post3.photo.attach(io: file, filename: "women-talking.jpg", content_type: "image/jpg")
post3.save
puts "All seeds successfully updated! The End."
