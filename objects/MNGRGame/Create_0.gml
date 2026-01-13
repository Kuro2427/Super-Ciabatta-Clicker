global.bred=0;
global.bps=0;

global.bredPerClick=1;

global.timer=60;

saveCountdown=5;

news = [
"Could bread be the key to eternal youth? \"No?? Why the hell would it??\" Say scientists.",
"Made up currencies: What are they? Why are they taking our youth by storm? Could they be harmful to the human psyche?",
"Breaking: Time wasted by youth in on-line video games soars to an all time high.",
"Local man becomes patient zero of \"Super Tunnel,\" a previously unheard of incredibly advanced form of Carpal Tunnel Syndrome.",
"Could your local bakery become the next wall street? Understand why and how disillusioned youths have turned to bread as an alternate form of currency.",
"Where are they now? MSABNPRBB news interviews the iconic classic rock side characters \"Henry the Horse\" and \"The Guys That Were Wearing the Looking Glass Ties."

]

nextRandText=100;
show_debug_message(nextRandText)

enum ITEMS{
	SLICE,
	TOAST,
	FRENCH
}

enum UPGRADES{
	CIABATTA,
	LOAF
}

//Inventory
global.inventory [ITEMS.SLICE] = 0;
global.inventory [ITEMS.TOAST] = 0;
global.inventory [ITEMS.FRENCH] = 0;

global.currentUpgrade=UPGRADES.CIABATTA;

load_game();