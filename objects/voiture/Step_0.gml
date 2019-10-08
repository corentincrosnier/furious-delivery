//Every Frame


//Movement

if(keyboard_check_pressed(vk_space) && m_turbo[? "cooldown"] <= 0 && m_gauge>=m_turbo[? "cost"]){
	//spd=m_turbo[? "speed"];
	m_speed=10;
	m_turbo[? "cooldown"]=150;
	m_turbo[? "activePeriod"]=80;
	m_gauge-=m_turbo[? "cost"];
}

if(m_turbo[? "activePeriod"]<=0) m_speed=5;

if(keyboard_check(vk_right)) x+=m_speed;
if(keyboard_check(vk_left)) x-=m_speed;
if(keyboard_check(vk_down)) y+=4;
if(keyboard_check(vk_up)) y-=4;


m_turbo[? "cooldown"]-=1;
m_turbo[? "activePeriod"]-=1;
draw_text_colour(10, 10, "HElooooo", 255,255,255,255,255);