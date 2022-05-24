puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."
Freebie.create(item_name: "Coozy", dev_id: Dev.first.id, company_id: Company.first.id, value: rand(1..10))
Freebie.create(item_name: "Frisbee", dev_id: Dev.second.id, company_id: Company.second.id, value: rand(1..10))
Freebie.create(item_name: "Pen", dev_id: Dev.third.id, company_id: Company.third.id, value: rand(1..10))
Freebie.create(item_name: "Water bottle", dev_id: Dev.fourth.id, company_id: Company.fourth.id, value: rand(1..10))
Freebie.create(item_name: "Book", dev_id: Dev.first.id, company_id: Company.first.id, value: rand(1..10))


# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
