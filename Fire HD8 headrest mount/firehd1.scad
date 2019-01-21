
union(){
    difference(){
        cube([13,225, 135]);
        translate([3,5,5]){
            cube([11,215,140]);
        }
        translate([6,3,5]){
            cube([4,3,140]);
        }
        //volume cutout
        translate([0,0,85]){
            cube([13,5,40]);
        }
        translate([0,35,25]){
            cube([5,148,88]);
        }
    }
    translate([13,0,0]){
        difference(){
            cube([3,225,135]);
            translate([0,20,15]){
                cube([4,185,135]);
            }
        }
    }
    //back
    difference(){
        translate([-30,30,20]){
            cube([30,158,98]);
        }
        translate([-30,35,25]){
            cube([30,148,88]);
        }
        
        translate([-17,50,20]){
            cube([2,120,5]);
        }
        translate([-17,50,113]){
            cube([2,120,5]);
        }
        
        translate([-30,30,40]){
            cube([15,160,60]);
        }
    }
}

