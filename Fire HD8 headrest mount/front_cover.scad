

union(){
    difference(){
        cube([10,230,147]);
        translate([0,2,2]){
            cube([13,226,141]);
        }
        translate([0,0,86]){
            cube([13,5,41]);
        }
    }
    difference(){
        translate([10,0,0]){
            cube([2,230,147]);
        }
        translate([10,23,17]){
            cube([2,185,112]);
        }
    }
}