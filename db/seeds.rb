# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email:'dingding@paytronix.com', password: 'bingbong')
project1 = Project.create(name: "Mobile Survey Taker",
description: "Integrates with Paytronix server to allow users to take restaurant surveys on their phone",
status: "completed")

ProjectOwner.create(user: user, project: project1)

project2 = Project.create(name: "Chicken Sandwich Machine",
description: "This sandwich makes machines",
status: "brainstorming")

ProjectOwner.create(user: user, project: project2)

project3 = Project.create(name: "Cure for World Hunger",
description: "This is also a chicken sandwich machine",
status: "brainstorming")

ProjectOwner.create(user: user, project: project3)
