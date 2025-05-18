module screw(){
    difference(){
        hull(){
            translate([16,-10,0]){
                cube([10,10,2]);
            }
            translate([16,-1,0]){
                cube([10,1,13]);
            }
        }
        translate([16,-10,11]){
            rotate([0,90,0]){
                cylinder(10,10,10);
            }
        }
        translate([21,-5,0]){
            cylinder(5,2,2);
        }
        translate([21,-5,1]){
            cylinder(5,4,4);
        }
    }
}



union(){
    difference(){
        cube([42,30,20]);
        translate([1,1,0]){
            cube([40,28,19]);
        }
        translate([10,15,0]){
            cylinder(25,4.5,4.5);
        }
        translate([40,7,0]){
            cube([2,16,15]);
        }
        translate([0,7,0]){
            cube([2,16,15]);
        }
        translate([30,0,0]){
            cube([7,30,5]);
        }
    }
   
    translate([35,0,14]){
        cube([7,30,5]);
    }
    screw();
    translate([40,30,0]){
        rotate([0,0,180]){
            screw();
        }
    }
    
}
