# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

city = City.create(name: "New York City", state: "New York", country: "United States", continent: "North America")

# category = Category.create([
#   { name: 'Advocacy & Human Rights' },
#   { name: 'Animals' },
#   { name: 'Arts & Culture' },
#   { name: 'Board Development' },
#   { name: 'Children & Youth' },
#   { name: 'Community' },
#   { name: 'Computers & Technology' },
#   { name: 'Crisis Support' },
#   { name: 'Disaster Relief' },
#   { name: 'Education & Literacy' },
#   { name: 'Emergency & Safety' },
#   { name: 'Employment' },
#   { name: 'Environment' },
#   { name: 'Faith-Based' },
#   { name: 'Health & Medicine' },
#   { name: 'Homeless & Housing' },
#   { name: 'Hunger' },
#   { name: 'Migrants & Refugees' },
#   { name: 'International' },
#   { name: 'Justice & Legal' },
#   { name: 'LGBT' },
#   { name: 'Media & Broadcasting' },
#   { name: 'People with Disabilities' },
#   { name: 'Politics' },
#   { name: 'Race & Ethnicity' },
#   { name: 'Seniors' },
#   { name: 'Sports & Recreation' },
#   { name: 'Veterans & Military Families' },
#   { name: 'Women'}
# ])
