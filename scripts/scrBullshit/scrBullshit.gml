/// @function string_thousands(number)
/// @param {real} number The number to format
function string_thousands(_number) {
    var _str = string(_number);
    var _len = string_length(_str);
    
    // Loop backwards from the end, skipping the last 3 digits
    for (var i = _len - 3; i > 0; i -= 3) {
        _str = string_insert(",", _str, i + 1);
    }
    
    return _str;
}

function give_bred(i){
	global.bred=i;
}

function save_game(){
	if(file_exists("bread.dat")){
		file_delete("bread.dat");
	}
	
	ini_open("bread.dat");
	
	ini_write_string("wow","hax","congrats, you found the very very super secret save file for his game. have fun cheating, cheater");
		
	ini_write_real("stats","bred",global.bred);
	ini_write_real("stats","bps",global.bps);
		
	ini_write_real("inventory","slice",global.inventory[ITEMS.SLICE]);
	ini_write_real("inventory","toast",global.inventory[ITEMS.TOAST]);
	ini_write_real("inventory","french",global.inventory[ITEMS.FRENCH]);
		
	ini_write_real("upgrade","rank",global.currentUpgrade);
		
	ini_close();
}

function load_game(){
	if(file_exists("bread.dat")){
		ini_open("bread.dat")
		
		global.bred = ini_read_real("stats","bred",0);
		global.bps = ini_read_real("stats","bps",0);
		
		global.inventory[ITEMS.SLICE] = ini_read_real("inventory","slice",0);
		global.inventory[ITEMS.TOAST] = ini_read_real("inventory","toast",0);
		global.inventory[ITEMS.FRENCH] = ini_read_real("inventory","french",0);
		
		global.currentUpgrade = ini_read_real("upgrade","rank",UPGRADES.CIABATTA);
	}
}