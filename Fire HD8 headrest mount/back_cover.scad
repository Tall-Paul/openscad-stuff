difference(){
    union(){
        cube([147,88,5]);
        translate([0,0,5]){
            cube([10,10,30]);
        }
        translate([137,0,5]){
            cube([10,10,26]);
        }
        translate([137,78,5]){
            cube([10,10,26]);
        }
        translate([0,78,5]){
            cube([10,10,26]);
        }
    }
    translate([68,39,0]){
        cube([10,10,5]);
    }
}