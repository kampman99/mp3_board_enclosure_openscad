// Speaker connector posts stick down below board 2mm.

include <mp3_board_box_lid_dimensions.scad>;

// floor entire board including post area
cube([board_only_w, board_l, floor_below_posts]);

// floor vertical extension in areas other than post area
translate([0, 0, floor_below_posts]) {
    color([1, 0, 0])
    cube([board_only_w - post_area_w, board_l, wall_thickness]);
}

// front (micro USB side)
// left side of micro USB (full wall)
translate([0, -wall_thickness, 0]) {
    cube([front_left_wall_w, wall_thickness, wall_height_full]);
}
// right side of micro USB (full wall)
translate([board_only_w - front_right_wall_w, -wall_thickness, 0]) {
    cube([front_right_wall_w, wall_thickness, wall_height_full]);
}
// front wall bridge above micro USB
translate([front_left_wall_w, 0 - wall_thickness, micro_usb_opening_h]) {
    cube([board_only_w - (front_right_wall_w + front_left_wall_w), wall_thickness,
        wall_height_full - micro_usb_opening_h]);
}

// right side (headphone jack side)
// left side of jack
translate([board_only_w, -wall_thickness, 0]) {
    cube([wall_thickness, right_front_wall_w + wall_thickness, wall_height_full]);
}
// right side of jack (full wall)
translate([board_only_w, board_l - right_back_wall_w, 0]) {
    cube([wall_thickness, right_back_wall_w + wall_thickness, wall_height_full]);
}
// bridge above headphone jack
translate([board_only_w, right_front_wall_w, headphone_jack_opening_h + wall_thickness + floor_below_posts]) {
    cube([wall_thickness, board_l - right_front_wall_w - right_back_wall_w, wall_height - headphone_jack_opening_h]);
}
// wall below headphone jack
translate([board_only_w, right_front_wall_w, 0]) {
    cube([wall_thickness, board_l - right_front_wall_w - right_back_wall_w, wall_thickness]);
}

// back full wall
translate([0, board_l, 0]) {
    cube([board_only_w, wall_thickness, wall_height_full]);
}

// left side (USB-A and microSD) - full walls overlap the lip
// left lip (USB/SD card side) 
translate([-wall_thickness, -wall_thickness, 0]) {
    color([0, 1, 0])
    cube([wall_thickness, board_l + wall_thickness + wall_thickness,
        floor_below_posts + wall_thickness]);
}
// left side of USB
translate([-wall_thickness, board_l - left_back_wall_w, 0]) {
    cube([wall_thickness, left_back_wall_w + wall_thickness, wall_height_full]);
}
// middle between USB and microSD
translate([-wall_thickness, left_front_wall_w + microsd_opening_w, 0]) {
    cube([wall_thickness, board_l - left_back_wall_w - usb_opening_w - microsd_opening_w - left_front_wall_w,
        wall_height_full]);
}
// right side of microSD
translate([-wall_thickness, -wall_thickness, 0]) {
    cube([wall_thickness, left_front_wall_w + wall_thickness, wall_height_full]);
}

// wall above USB (overlaps uprights)
translate([-wall_thickness, board_l / 2, floor_below_posts + wall_thickness + usb_opening_h]) {
    cube([wall_thickness, board_l / 2, wall_height - usb_opening_h]);
}

// wall above microSD (overlaps uprights)
translate([-wall_thickness, 0, floor_below_posts + wall_thickness + microsd_opening_h]) {
    cube([wall_thickness, left_front_wall_w + microsd_opening_w, wall_height - microsd_opening_h]);
}

// Note: The lid is so tight that the bumps were in the way of putting the lid on and they
// weren't needed anyway.

// left bump (this protusion is 90% the size of the cavity in the lid)
//color([1, 0, 1])
//translate([-wall_thickness - bump_w * .9,
//    board_l / 2 - bump_l *.9 / 2,
//    wall_height_full - lid_lip_h / 2 - bump_h * .9 / 2]) {
//    cube([bump_w * .9, bump_l * .9, bump_h * .9]);
//}

// right bump (this protusion is 90% the size of the cavity in the lid)
//color([1, 0, 1])
//translate([board_only_w + wall_thickness,
//    board_l / 2 - bump_l *.9 / 2,
//    wall_height_full - lid_lip_h / 2 - bump_h * .9 / 2]) {
//    cube([bump_w * .9, bump_l * .9, bump_h * .9]);
//}