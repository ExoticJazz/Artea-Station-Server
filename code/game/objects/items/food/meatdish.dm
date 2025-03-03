//Not only meat, actually, but also snacks that are almost meat, such as fish meat or tofu


////////////////////////////////////////////FISH////////////////////////////////////////////

/obj/item/food/cubancarp
	name = "\improper Cuban carp"
	desc = "A grifftastic sandwich that burns your tongue and then leaves it numb!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "cubancarp"
	bite_consumption = 3
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/protein = 6,  /datum/reagent/consumable/capsaicin = 1, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("fish" = 4, "batter" = 1, "hot peppers" = 1)
	foodtypes = SEAFOOD | FRIED
	w_class = WEIGHT_CLASS_SMALL


/obj/item/food/fishmeat
	name = "fish fillet"
	desc = "A fillet of some fish meat."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "fishfillet"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/nutriment/vitamin = 2)
	bite_consumption = 6
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD
	eatverbs = list("bite", "chew", "gnaw", "swallow", "chomp")
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/fishmeat/carp
	name = "carp fillet"
	desc = "A fillet of spess carp meat."
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/toxin/carpotoxin = 2, /datum/reagent/consumable/nutriment/vitamin = 2)
	/// Cytology category you can swab the meat for.
	var/cell_line = CELL_LINE_TABLE_CARP

/obj/item/food/fishmeat/carp/Initialize(mapload)
	. = ..()
	if(cell_line)
		AddElement(/datum/element/swabable, cell_line, CELL_VIRUS_TABLE_GENERIC_MOB)

/obj/item/food/fishmeat/carp/imitation
	name = "imitation carp fillet"
	desc = "Almost just like the real thing, kinda."
	cell_line = null

/obj/item/food/fishmeat/moonfish
	name = "moonfish fillet"
	desc = "A fillet of moonfish."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "moonfish_fillet"

/obj/item/food/fishmeat/moonfish/MakeGrillable()
	AddComponent(/datum/component/grillable, /obj/item/food/grilled_moonfish, rand(40 SECONDS, 50 SECONDS), TRUE, TRUE)

/obj/item/food/fishmeat/gunner_jellyfish
	name = "filleted gunner jellyfish"
	desc = "A gunner jellyfish with the stingers removed. Mildly hallucinogenic."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "jellyfish_fillet"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/toxin/mindbreaker = 2)

/obj/item/food/fishmeat/armorfish
	name = "cleaned armorfish"
	desc = "An armorfish with its guts and shell removed, ready for use in cooking."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "armorfish_fillet"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3)

/obj/item/food/fishmeat/donkfish
	name = "donkfillet"
	desc = "The dreaded donkfish fillet. No sane spaceman would eat this, and it does not get better when cooked."
	icon_state = "donkfillet"
	food_reagents = list(/datum/reagent/yuck = 3)

/obj/item/food/fishfingers
	name = "fish fingers"
	desc = "A finger of fish."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "fishfingers"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2)
	bite_consumption = 1
	tastes = list("fish" = 1, "breadcrumbs" = 1)
	foodtypes = SEAFOOD | FRIED
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_EXOTIC

/obj/item/food/fishandchips
	name = "fish and chips"
	desc = "I do say so myself chap."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "fishandchips"
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("fish" = 1, "chips" = 1)
	foodtypes = SEAFOOD | VEGETABLES | FRIED
	venue_value = FOOD_PRICE_NORMAL

/obj/item/food/fishfry
	name = "fish fry"
	desc = "All that and no bag of chips..."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "fishfry"
	food_reagents = list (/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("fish" = 1, "pan seared vegtables" = 1)
	foodtypes = SEAFOOD | VEGETABLES | FRIED
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/fishtaco
	name = "fish taco"
	desc = "A taco with fish, cheese, and cabbage."
	icon_state = "fishtaco"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("taco" = 4, "fish" = 2, "cheese" = 2, "cabbage" = 1)
	foodtypes = SEAFOOD | DAIRY | GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/vegetariansushiroll
	name = "vegetarian sushi roll"
	desc = "A roll of simple vegetarian sushi with rice, carrots, and potatoes. Sliceable into pieces!"
	icon_state = "vegetariansushiroll"
	food_reagents = list(/datum/reagent/consumable/nutriment = 12, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("boiled rice" = 4, "carrots" = 2, "potato" = 2)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/vegetariansushiroll/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/vegetariansushislice, 4)

/obj/item/food/vegetariansushislice
	name = "vegetarian sushi slice"
	desc = "A slice of simple vegetarian sushi with rice, carrots, and potatoes."
	icon_state = "vegetariansushislice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("boiled rice" = 4, "carrots" = 2, "potato" = 2)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/spicyfiletsushiroll
	name = "spicy filet sushi roll"
	desc = "A roll of tasty, spicy sushi made with fish and vegetables. Sliceable into pieces!"
	icon_state = "spicyfiletroll"
	food_reagents = list(/datum/reagent/consumable/nutriment = 12, /datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/capsaicin = 4, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("boiled rice" = 4, "fish" = 2, "spicyness" = 2)
	foodtypes = VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/spicyfiletsushiroll/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/spicyfiletsushislice, 4)

/obj/item/food/spicyfiletsushislice
	name = "spicy filet sushi slice"
	desc = "A slice of tasty, spicy sushi made with fish and vegetables. Don't eat it too fast!."
	icon_state = "spicyfiletslice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/protein = 1, /datum/reagent/consumable/capsaicin = 1, /datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("boiled rice" = 4, "fish" = 2, "spicyness" = 2)
	foodtypes = VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

// empty sushi for custom sushi
/obj/item/food/sushi/empty
	name = "sushi"
	foodtypes = NONE
	tastes = list()
	icon_state = "vegetariansushiroll"
	desc = "A roll of customized sushi."

/obj/item/food/sushi/empty/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/sushislice/empty, 4)

/obj/item/food/sushislice/empty
	name = "sushi slice"
	foodtypes = NONE
	tastes = list()
	icon_state = "vegetariansushislice"
	desc = "A slice of customized sushi."

/obj/item/food/nigiri_sushi
	name = "nigiri sushi"
	desc = "A simple nigiri of fish atop a packed rice ball with a seaweed wrapping and a side of soy sauce."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "nigiri_sushi"
	food_reagents = list(/datum/reagent/consumable/nutriment = 10, /datum/reagent/consumable/nutriment/vitamin = 6, /datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("boiled rice" = 4, "fish filet" = 2, "soy sauce" = 2)
	foodtypes = SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/meat_poke
	name = "meat poke"
	desc = "Simple poke, rice on the bottom, vegetables and meat on top. Should be mixed before eating."
	icon = 'icons/obj/food/soupsalad.dmi'
	icon_state = "pokemeat"
	food_reagents = list(/datum/reagent/consumable/nutriment = 11, /datum/reagent/consumable/nutriment/vitamin = 5, /datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("rice and meat" = 4, "lettuce" = 2, "soy sauce" = 2)
	foodtypes = SEAFOOD | MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/fish_poke
	name = "fish poke"
	desc = "Simple poke, rice on the bottom, vegetables and fish on top. Should be mixed before eating."
	icon = 'icons/obj/food/soupsalad.dmi'
	icon_state = "pokefish"
	food_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 4, /datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("rice and fish" = 4, "lettuce" = 2, "soy sauce" = 2)
	foodtypes = SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

////////////////////////////////////////////MEATS AND ALIKE////////////////////////////////////////////

/obj/item/food/tempeh
	name = "raw tempeh block"
	desc = "Fungus fermented soybean cake, warm to the touch."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "tempeh"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 8)
	tastes = list("earthy" = 3, "nutty" = 2, "bland" = 1 )
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP

// sliceable into 4xtempehslices
/obj/item/food/tempeh/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/tempehslice, 4, 5 SECONDS, table_required = TRUE)

//add an icon for slices
/obj/item/food/tempehslice
	name = "tempeh slice"
	desc = "A slice of tempeh, a slice of wkwkwk."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "tempehslice"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("earthy" = 3, "nutty" = 2, "bland" = 1)
	foodtypes = VEGETABLES

//add an icon for blends
/obj/item/food/tempehstarter
	name = "tempeh starter"
	desc = "A mix of soy and joy. It's warm... and moving?"
	icon = 'icons/obj/food/food.dmi'
	icon_state = "tempehstarter"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("nutty" = 2, "bland" = 2)
	foodtypes = VEGETABLES | GROSS

/obj/item/food/tofu
	name = "tofu"
	desc = "We all love tofu."
	icon_state = "tofu"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("tofu" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/tofu/prison
	name = "soggy tofu"
	desc = "You refuse to eat this strange bean curd."
	tastes = list("sour, rotten water" = 1)
	foodtypes = GROSS

/obj/item/food/spiderleg
	name = "spider leg"
	desc = "A still twitching leg of a giant spider... you don't really want to eat this, do you?"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "spiderleg"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/toxin = 2)
	tastes = list("cobwebs" = 1)
	foodtypes = MEAT | TOXIC
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/spiderleg/MakeGrillable()
	AddComponent(/datum/component/grillable, /obj/item/food/boiledspiderleg, rand(50 SECONDS, 60 SECONDS), TRUE, TRUE)

/obj/item/food/cornedbeef
	name = "corned beef and cabbage"
	desc = "Now you can feel like a real tourist vacationing in Ireland."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "cornedbeef"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/protein = 6, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("meat" = 1, "cabbage" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/bearsteak
	name = "Filet migrawr"
	desc = "Because eating bear wasn't manly enough."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "bearsteak"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "salmon" = 1)
	foodtypes = MEAT | ALCOHOL
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_EXOTIC

/obj/item/food/raw_meatball
	name = "raw meatball"
	desc = "A great meal all round. Not a cord of wood. Kinda raw"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "raw_meatball"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT | RAW
	w_class = WEIGHT_CLASS_SMALL
	var/meatball_type = /obj/item/food/meatball
	var/patty_type = /obj/item/food/raw_patty

/obj/item/food/raw_meatball/MakeGrillable()
	AddComponent(/datum/component/grillable, meatball_type, rand(30 SECONDS, 40 SECONDS), TRUE)

/obj/item/food/raw_meatball/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_ROLLINGPIN, patty_type, 1, table_required = TRUE)

/obj/item/food/raw_meatball/human
	name = "strange raw meatball"
	meatball_type = /obj/item/food/meatball/human
	patty_type = /obj/item/food/raw_patty/human

/obj/item/food/raw_meatball/corgi
	name = "raw corgi meatball"
	meatball_type = /obj/item/food/meatball/corgi
	patty_type = /obj/item/food/raw_patty/corgi

/obj/item/food/raw_meatball/xeno
	name = "raw xeno meatball"
	meatball_type = /obj/item/food/meatball/xeno
	patty_type = /obj/item/food/raw_patty/xeno

/obj/item/food/raw_meatball/bear
	name = "raw bear meatball"
	meatball_type = /obj/item/food/meatball/bear
	patty_type = /obj/item/food/raw_patty/bear

/obj/item/food/raw_meatball/chicken
	name = "raw chicken meatball"
	meatball_type = /obj/item/food/meatball/chicken
	patty_type = /obj/item/food/raw_patty/chicken

/obj/item/food/meatball
	name = "meatball"
	desc = "A great meal all round. Not a cord of wood."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "meatball"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL
	burns_on_grill = TRUE
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/meatball/human
	name = "strange meatball"

/obj/item/food/meatball/corgi
	name = "corgi meatball"

/obj/item/food/meatball/bear
	name = "bear meatball"
	tastes = list("meat" = 1, "salmon" = 1)

/obj/item/food/meatball/xeno
	name = "xenomorph meatball"
	tastes = list("meat" = 1, "acid" = 1)

/obj/item/food/meatball/chicken
	name = "chicken meatball"
	tastes = list("chicken" = 1)
	icon_state = "chicken_meatball"

/obj/item/food/raw_patty
	name = "raw patty"
	desc = "I'm.....NOT REAAADDYY."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "raw_patty"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT | RAW
	w_class = WEIGHT_CLASS_SMALL
	var/patty_type = /obj/item/food/patty/plain

/obj/item/food/raw_patty/MakeGrillable()
	AddComponent(/datum/component/grillable, patty_type, rand(30 SECONDS, 40 SECONDS), TRUE)

/obj/item/food/raw_patty/human
	name = "strange raw patty"
	patty_type = /obj/item/food/patty/human

/obj/item/food/raw_patty/corgi
	name = "raw corgi patty"
	patty_type = /obj/item/food/patty/corgi

/obj/item/food/raw_patty/bear
	name = "raw bear patty"
	tastes = list("meat" = 1, "salmon" = 1)
	patty_type = /obj/item/food/patty/bear

/obj/item/food/raw_patty/xeno
	name = "raw xenomorph patty"
	tastes = list("meat" = 1, "acid" = 1)
	patty_type = /obj/item/food/patty/xeno

/obj/item/food/raw_patty/chicken
	name = "raw chicken patty"
	tastes = list("chicken" = 1)
	patty_type = /obj/item/food/patty/chicken

/obj/item/food/patty
	name = "patty"
	desc = "The nanotrasen patty is the patty for you and me!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "patty"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL
	burns_on_grill = TRUE

///Exists purely for the crafting recipe (because itll take subtypes)
/obj/item/food/patty/plain

/obj/item/food/patty/human
	name = "strange patty"

/obj/item/food/patty/corgi
	name = "corgi patty"

/obj/item/food/patty/bear
	name = "bear patty"
	tastes = list("meat" = 1, "salmon" = 1)

/obj/item/food/patty/xeno
	name = "xenomorph patty"
	tastes = list("meat" = 1, "acid" = 1)

/obj/item/food/patty/chicken
	name = "chicken patty"
	tastes = list("chicken" = 1)
	icon_state = "chicken_patty"

/obj/item/food/raw_sausage
	name = "raw sausage"
	desc = "A piece of mixed, long meat, but then raw."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "raw_sausage"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT | RAW
	eatverbs = list("bite", "chew", "nibble", "deep throat", "gobble", "chomp")
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/raw_sausage/MakeGrillable()
	AddComponent(/datum/component/grillable, /obj/item/food/sausage, rand(60 SECONDS, 75 SECONDS), TRUE)

/obj/item/food/sausage
	name = "sausage"
	desc = "A piece of mixed, long meat."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "sausage"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("meat" = 1)
	foodtypes = MEAT | BREAKFAST
	food_flags = FOOD_FINGER_FOOD
	eatverbs = list("bite", "chew", "nibble", "deep throat", "gobble", "chomp")
	w_class = WEIGHT_CLASS_SMALL
	burns_on_grill = TRUE
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/sausage/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/salami, 6, 3 SECONDS, table_required = TRUE)
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/sausage/american, 1, 3 SECONDS, table_required = TRUE)

/obj/item/food/sausage/american
	name = "american sausage"
	desc = "Snip."
	icon_state = "american_sausage"

/obj/item/food/sausage/american/MakeProcessable()
	return

/obj/item/food/salami
	name = "salami"
	desc = "A slice of cured salami."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "salami"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 1)
	tastes = list("meat" = 1, "smoke" = 1)
	foodtypes = MEAT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/rawkhinkali
	name = "raw khinkali"
	desc = "One hundred khinkalis? Do I look like a pig?"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "khinkali"
	food_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/protein = 1, /datum/reagent/consumable/nutriment/vitamin = 1, /datum/reagent/consumable/garlic = 1)
	tastes = list("meat" = 1, "onions" = 1, "garlic" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/rawkhinkali/MakeGrillable()
	AddComponent(/datum/component/grillable, /obj/item/food/khinkali, rand(50 SECONDS, 60 SECONDS), TRUE)

/obj/item/food/khinkali
	name = "khinkali"
	desc = "One hundred khinkalis? Do I look like a pig?"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "khinkali"
	food_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/protein = 1, /datum/reagent/consumable/nutriment/vitamin = 1, /datum/reagent/consumable/garlic = 1)
	bite_consumption = 3
	tastes = list("meat" = 1, "onions" = 1, "garlic" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL
	burns_on_grill = TRUE

/obj/item/food/meatbun
	name = "meat bun"
	desc = "Has the potential to not be Dog."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "meatbun"
	food_reagents = list(/datum/reagent/consumable/nutriment = 7, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("bun" = 3, "meat" = 2)
	foodtypes = GRAIN | MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/stewedsoymeat
	name = "stewed soy meat"
	desc = "Even non-vegetarians will LOVE this!"
	icon_state = "stewedsoymeat"
	food_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/protein = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("soy" = 1, "vegetables" = 1)
	eatverbs = list("slurp", "sip", "inhale", "drink")
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/boiledspiderleg
	name = "boiled spider leg"
	desc = "A giant spider's leg that's still twitching after being cooked. Gross!"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "spiderlegcooked"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/capsaicin = 4, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("hot peppers" = 1, "cobwebs" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL
	burns_on_grill = TRUE

/obj/item/food/spidereggsham
	name = "green eggs and ham"
	desc = "Would you eat them on a train? Would you eat them on a plane? Would you eat them on a state of the art corporate deathtrap floating through space?"
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "spidereggsham"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 8, /datum/reagent/consumable/nutriment/vitamin = 3)
	bite_consumption = 4
	tastes = list("meat" = 1, "the colour green" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/sashimi
	name = "carp sashimi"
	desc = "Celebrate surviving attack from hostile alien lifeforms by hospitalising yourself. You sure hope whoever made this is skilled."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "sashimi"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 10, /datum/reagent/consumable/capsaicin = 9, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("fish" = 1, "hot peppers" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_TINY
	//total price of this dish is 20 and a small amount more for soy sauce, all of which are available at the orders console
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/sashimi/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/swabable, CELL_LINE_TABLE_CARP, CELL_VIRUS_TABLE_GENERIC_MOB)

/obj/item/food/nugget
	name = "chicken nugget"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/protein = 2, /datum/reagent/consumable/nutriment/vitamin = 1)
	icon = 'icons/obj/food/meat.dmi'
	/// Default nugget icon for recipes that need any nugget
	icon_state = "nugget_lump"
	tastes = list("\"chicken\"" = 1)
	foodtypes = MEAT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_TINY
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/nugget/Initialize(mapload)
	. = ..()
	var/shape = pick("lump", "star", "lizard", "corgi")
	desc = "A 'chicken' nugget vaguely shaped like a [shape]."
	icon_state = "nugget_[shape]"

/obj/item/food/pigblanket
	name = "pig in a blanket"
	desc = "A tiny sausage wrapped in a flakey, buttery roll. Free this pig from its blanket prison by eating it."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "pigblanket"
	food_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("meat" = 1, "butter" = 1)
	foodtypes = MEAT | DAIRY | GRAIN
	w_class = WEIGHT_CLASS_TINY

/obj/item/food/bbqribs
	name = "bbq ribs"
	desc = "BBQ ribs, slathered in a healthy coating of BBQ sauce. The least vegan thing to ever exist."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "ribs"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 10, /datum/reagent/consumable/nutriment/vitamin = 3, /datum/reagent/consumable/bbqsauce = 10)
	tastes = list("meat" = 3, "smokey sauce" = 1)
	foodtypes = MEAT | SUGAR

/obj/item/food/meatclown
	name = "meat clown"
	desc = "A delicious, round piece of meat clown. How horrifying."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "meatclown"
	food_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 1, /datum/reagent/consumable/banana = 2)
	tastes = list("meat" = 5, "clowns" = 3, "sixteen teslas" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/meatclown/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/slippery, 3 SECONDS)

/obj/item/food/lasagna
	name = "Lasagna"
	desc = "A slice of lasagna. Perfect for a Monday afternoon."
	icon_state = "lasagna"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 1, /datum/reagent/consumable/tomatojuice = 10)
	tastes = list("meat" = 3, "pasta" = 3, "tomato" = 2, "cheese" = 2)
	foodtypes = MEAT | DAIRY | GRAIN
	venue_value = FOOD_PRICE_NORMAL

//////////////////////////////////////////// KEBABS AND OTHER SKEWERS ////////////////////////////////////////////

/obj/item/food/kebab
	trash_type = /obj/item/stack/rods
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "kebab"
	w_class = WEIGHT_CLASS_NORMAL
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 14)
	tastes = list("meat" = 3, "metal" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/kebab/human
	name = "human-kebab"
	desc = "A human meat, on a stick."
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 16, /datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("tender meat" = 3, "metal" = 1)
	foodtypes = MEAT | GORE
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/kebab/monkey
	name = "meat-kebab"
	desc = "Delicious meat, on a stick."
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 16, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("meat" = 3, "metal" = 1)
	foodtypes = MEAT
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/kebab/tofu
	name = "tofu-kebab"
	desc = "Vegan meat, on a stick."
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 15)
	tastes = list("tofu" = 3, "metal" = 1)
	foodtypes = VEGETABLES
	venue_value = FOOD_PRICE_CHEAP


/obj/item/food/kebab/rat
	name = "rat-kebab"
	desc = "Not so delicious rat meat, on a stick."
	icon_state = "ratkebab"
	w_class = WEIGHT_CLASS_NORMAL
	trash_type = null
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 10, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("rat meat" = 1, "metal" = 1)
	foodtypes = MEAT | GORE
	venue_value = FOOD_PRICE_CHEAP

/obj/item/food/kebab/rat/double
	name = "double rat-kebab"
	icon_state = "doubleratkebab"
	tastes = list("rat meat" = 2, "metal" = 1)
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 20, /datum/reagent/consumable/nutriment/vitamin = 4, /datum/reagent/iron = 2)

/obj/item/food/kebab/fiesta
	name = "fiesta skewer"
	icon_state = "fiestaskewer"
	tastes = list("tex-mex" = 3, "cumin" = 2)
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 12, /datum/reagent/consumable/nutriment/vitamin = 6, /datum/reagent/consumable/capsaicin = 3)

/obj/item/food/fried_chicken
	name = "fried chicken"
	desc = "A juicy hunk of chicken meat, fried to perfection."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "fried_chicken1"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("chicken" = 3, "fried batter" = 1)
	foodtypes = MEAT | FRIED
	junkiness = 25
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/fried_chicken/Initialize(mapload)
	. = ..()
	if(prob(50))
		icon_state = "fried_chicken2"

/obj/item/food/beef_stroganoff
	name = "beef stroganoff"
	desc = "A russian dish that consists of beef and sauce. Really popular in japan, or at least that's what my animes would allude to."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "beefstroganoff"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 16, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("beef" = 3, "sour cream" = 1, "salt" = 1, "pepper" = 1)
	foodtypes = MEAT | VEGETABLES | DAIRY

	w_class = WEIGHT_CLASS_SMALL
	//basic ingredients, but a lot of them. just covering costs here
	venue_value = FOOD_PRICE_NORMAL

/obj/item/food/beef_wellington
	name = "beef wellington"
	desc = "A luxurious log of beef, covered in a fine mushroom duxelle and pancetta ham, then bound in puff pastry."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "beef_wellington"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 21, /datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("beef" = 3, "mushrooms" = 1, "pancetta" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_NORMAL
	venue_value = FOOD_PRICE_EXOTIC

/obj/item/food/beef_wellington/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE,  /obj/item/food/beef_wellington_slice, 3, 3 SECONDS, table_required = TRUE)

/obj/item/food/beef_wellington_slice
	name = "beef wellington slice"
	desc = "A slice of beef wellington, topped with a rich gravy. Simply delicious."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "beef_wellington_slice"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 7, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("beef" = 3, "mushrooms" = 1, "pancetta" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_NORMAL

/obj/item/food/full_english
	name = "full english breakfast"
	desc = "A hearty plate with all the trimmings, representing the pinnacle of the breakfast art."
	icon = 'icons/obj/food/meat.dmi'
	icon_state = "full_english"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 8, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("sausage" = 1, "bacon" = 1, "egg" = 1, "tomato" = 1, "mushrooms" = 1, "bread" = 1, "beans" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN | BREAKFAST
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_EXOTIC
