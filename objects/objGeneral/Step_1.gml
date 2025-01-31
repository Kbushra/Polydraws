global.confirm = keyboard_check_pressed(vk_enter);
global.respawn = keyboard_check_pressed(ord("R"));

if global.respawn { game_restart(); exit; }

if !global.movement { exit; }

global.l = keyboard_check(vk_left) || keyboard_check(ord("A"));
global.r = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.u = keyboard_check(vk_up) || keyboard_check(ord("W"));
global.d = keyboard_check(vk_down) || keyboard_check(ord("S"));
	
global.shape1 = keyboard_check_pressed(ord("1"));
global.shape2 = keyboard_check_pressed(ord("2"));
global.shape3 = keyboard_check_pressed(ord("3"));

global.jump = keyboard_check_pressed(vk_space) || global.u;

if objPlayer.forming || objPlayer.top != -1 { pauseMovement(); }