# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Conference.delete_all
Team.delete_all

# creating conferences and teams
# patriot league
patriot = Conference.create(name: "Patriot League", short_name:"Patriot", reputation:50);
colgate = Team.create(university_name:"Colgate", nickname:"Raiders", conference:patriot)
Team.create(university_name:"Navy", nickname:"Midshipmen", conference:patriot)
Team.create(university_name:"Lehigh", nickname:"Mountain Hawks", conference:patriot)
Team.create(university_name:"Army", nickname:"Black Knights", conference:patriot)
Team.create(university_name:"Boston University", nickname:"Terriers", conference:patriot)
Team.create(university_name:"Lafayette", nickname:"Leopards", conference:patriot)
Team.create(university_name:"American University", nickname:"Eagles", conference:patriot)
Team.create(university_name:"Loyola Maryland", nickname:"Greyhounds", conference:patriot)
Team.create(university_name:"Holy Cross", nickname:"Crusaders", conference:patriot)
Team.create(university_name:"Bucknell", nickname:"Bison", conference:patriot)
# big ten
big_ten = Conference.create(name: "Big Ten", short_name:"Big Ten", reputation:90);
Team.create(university_name:"Purdue", nickname:"Boilermakers", conference:big_ten)
Team.create(university_name:"Northwestern", nickname:"Wildcats", conference:big_ten)
Team.create(university_name:"Indiana", nickname:"Hoosiers", conference:big_ten)
Team.create(university_name:"Michigan State", nickname:"Spartans", conference:big_ten)
Team.create(university_name:"Iowa", nickname:"Hawkeyes", conference:big_ten)
Team.create(university_name:"Maryland", nickname:"Terrapins", conference:big_ten)
Team.create(university_name:"Illinois", nickname:"Fighting Illini", conference:big_ten)
Team.create(university_name:"Michigan", nickname:"Wolverines", conference:big_ten)
Team.create(university_name:"Rutgers", nickname:"Scarlet Knights", conference:big_ten)
Team.create(university_name:"Penn State", nickname:"Nittany Lions", conference:big_ten)
Team.create(university_name:"Nebraska", nickname:"Cornhuskers", conference:big_ten)
Team.create(university_name:"Wisconsin", nickname:"Badgers", conference:big_ten)
Team.create(university_name:"Ohio State", nickname:"Buckeyes", conference:big_ten)
Team.create(university_name:"Minnesota", nickname:"Golden Gopher", conference:big_ten)

User.create(name:"Jackson", team:colgate);


