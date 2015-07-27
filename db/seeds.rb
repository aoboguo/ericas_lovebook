# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Erica.delete_all
puts "Creating Erica's entries..."

Erica.create! name: "Derica", description: "Exactly what it sounds like", objective: "DFMO", sexiness: 9
Erica.create! name: "sweatpants, hair tied, chillin' wit no makeup on", description: "What finals week looks like in real life", objective: "I just came to say hello", sexiness: 9
Erica.create! name: "regatta Erica on the Thames", description: "Blazers, ray-bans, crew boys, great tans", objective: "I just came to say hello", sexiness: 9



Boy.delete_all
puts "Creating Erica's companions..."

Boy.create! name: "Shane", description: "the New England prep", 
pros: "He actually loves the changing foliage and is no stranger to forced apple and pumpkin picking. He knows how to sail, swim and row.", 
cons: "Is way too amused with finishing whatever Sam Adams variety pack is in season. Keeps getting you Cape Cod bracelets for major holidays. His closet is a Sperry graveyard that he won't part with regardless of stench. Really wants you to try camping. ", 
level_of_adequacy: 5, ericas: Erica.where(name: "regatta Erica on the Thames")

Boy.create! name: "Carlos", description: "the trouble maker", 
pros: "Disturbingly attractive. Can cook and clean beautifully thanks to a brief stint in military school. Is always game for another round. Somehow always has access to the company car even though he hasn't worked there in three months.", 
cons: "Doesn't remember the previous night. Constantly quotes Top Gun at inappropriate moments. Accidentally set your cardigan on fire that one time. ", 
level_of_adequacy: 6, ericas: Erica.where(name: "Derica")