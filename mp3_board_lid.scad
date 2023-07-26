include <mp3_board_box_lid_dimensions.scad>;

// flat top of lid
cube([board_only_w + wall_thickness * 4, board_l + wall_thickness * 4, wall_thickness]);

// left lip
translate([0, 0, wall_thickness]) {
    cube([wall_thickness, board_l + wall_thickness * 4, wall_thickness]);
}

// right lip
translate([board_only_w + wall_thickness * 3, 0, wall_thickness]) {
    cube([wall_thickness, board_l + wall_thickness * 4, wall_thickness]);
}

// front lip
translate([0, 0, wall_thickness]) {
    cube([board_only_w + wall_thickness * 4, wall_thickness, wall_thickness]);
}

// back lip
translate([0, board_l + wall_thickness * 3, wall_thickness]) {
    cube([board_only_w + wall_thickness * 4, wall_thickness, wall_thickness]);
}
