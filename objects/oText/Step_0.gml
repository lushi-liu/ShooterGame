/// @description Print Text

letters += spd;
text_current = string_copy(text,1,(letters));
draw_set_font(fSign);
if h == 0 h = string_height(text);
w = string_width(text_current);

//Destroy
if (letters >= length) and (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	with oCamera follow = oPlayer;
}