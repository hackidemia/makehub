# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.where(
  name: 'Super Hacker',
  email: 'hack@er.com',
  provider: 'bestprovideroftheworld',
  uid: 'secret123'
).first_or_create

project = user.projects.create(
  name: 'Robot-duino'
)

materials = project.materials.create([
  {
    name: 'Robot'
  },
  {
    name: 'Arduino'
  }
])

steps = project.steps.create([
  {
    name: 'Step 1',
    content: 'Prepare the arduino.'
  },
  {
    name: 'Step 2',
    content: 'Put the arduino inside the robot.'
  },
  {
    name: 'Step 3',
    content: 'Write the software'
  },
  {
    name: 'Step 4',
    content: 'PROFIT'
  },
])


user2 = User.where(
  name: 'Regular Hacker',
  email: 'regul@arhack.er',
  provider: 'bestprovideroftheworld',
  uid: 'secret456'
).first_or_create

project2 = user2.projects.create(
  name: 'Raspberry-Car'
)

materials2 = project2.materials.create([
  {
    name: 'Car'
  },
  {
    name: 'Raspberry Pi'
  }
])

step2s = project2.steps.create([
  {
    name: 'Step 1',
    content: 'Arduino the Prepar.'
  },
  {
    name: 'Step 2',
    content: 'Robot the Lorem Ipsum..'
  },
  {
    name: 'Step 3',
    content: 'Hack the matrix'
  },
  {
    name: 'Step 4',
    content: 'PROFITssss!!'
  },
])
