// Speaker connector posts stick down below board 2mm.

include <mp3_board_box_lid_dimensions.scad>;

// floor entire board including post area
cube([board_only_w, board_l, floor_below_posts + .001]);

// floor vertical extension in areas other than post area
translate([0, 0, floor_below_posts]) {
    color([1, 0, 0])
    cube([board_only_w - post_area_w, board_l, wall_thickness]);
}

// left lip (USB/SD card side)
translate([-wall_thickness, -wall_thickness, 0]) {
    color([0, 1, 0])
    cube([wall_thickness, board_l + wall_thickness + wall_thickness,
        floor_below_posts + wall_thickness + board_h]);
}

// front (micro USB side)
// left side of micro USB (full wall)
translate([0, -wall_thickness, 0]) {
    cube([front_left_wall_w, wall_thickness, floor_below_posts + wall_thickness + wall_height]);
}
// right side of micro USB (full wall)
translate([board_only_w - front_right_wall_w, -wall_thickness, 0]) {
    cube([front_right_wall_w, wall_thickness, floor_below_posts + wall_thickness + wall_height]);
}
// front wall bridge above micro USB
translate([front_left_wall_w, 0 - wall_thickness, micro_usb_opening_h]) {
    cube([board_only_w - (front_right_wall_w + front_left_wall_w), wall_thickness,
        wall_height + floor_below_posts + wall_thickness -micro_usb_opening_h]);
}

// right side (headphone jack side)
// left side of jack
translate([board_only_w, -wall_thickness, 0]) {
    cube([wall_thickness, right_front_wall_w + wall_thickness, floor_below_posts + wall_thickness + wall_height]);
}
// right side of jack (full wall)
translate([board_only_w, board_l - right_back_wall_w, 0]) {
    cube([wall_thickness, right_back_wall_w + wall_thickness, floor_below_posts + wall_thickness + wall_height]);
}

// back full wall
translate([0, board_l, 0]) {
    cube([board_only_w, wall_thickness, floor_below_posts + wall_thickness + wall_height]);
}


