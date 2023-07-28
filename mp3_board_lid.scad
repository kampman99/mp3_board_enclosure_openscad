include <mp3_board_box_lid_dimensions.scad>;

// flat top of lid
cube([board_only_w + wall_thickness * 4, board_l + wall_thickness * 4, wall_thickness]);

// left lip
color([0,1,1])
translate([0, 0, wall_thickness]) {
    difference() {
        cube([wall_thickness, board_l + wall_thickness * 4, lid_lip_h]);
        // cutout
        translate([wall_thickness - bump_w,
            (board_l + wall_thickness * 4) / 2 - bump_l / 2,
            lid_lip_h / 2 - bump_h / 2]) {
                cube([bump_w, bump_l, bump_h]);
        }    
    }
}

// right lip
translate([board_only_w + wall_thickness * 3, 0, wall_thickness]) {
    difference() {
        cube([wall_thickness, board_l + wall_thickness * 4, lid_lip_h]);
        // cutout
        translate([0,
            (board_l + wall_thickness * 4) / 2 - bump_l / 2,
            lid_lip_h / 2 - bump_h / 2]) {
                cube([bump_w, bump_l, bump_h]);
        }
    }
}

// front lip
translate([0, 0, wall_thickness]) {
    cube([board_only_w + wall_thickness * 4, wall_thickness, lid_lip_h]);
}

// back lip
translate([0, board_l + wall_thickness * 3, wall_thickness]) {
    cube([board_only_w + wall_thickness * 4, wall_thickness, lid_lip_h]);
}
