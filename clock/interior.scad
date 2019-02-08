union(){
    difference(){
        //outside box
        translate([6,6,0]){
            minkowski(){
                cube([46,40,0.5]);
                cylinder(r=6,h=0.5);
            }
        }
        //display cutout
        translate([11.5,11.5,0]){
            cube([38,30,3]);
        }       
    }
    //mounting posts
    translate([3.5,11.5,1]){
        cylinder(r=1.5,h=5);
    }
    translate([3.5,41.5,1]){
        cylinder(r=1.5,h=5);
    }
    translate([55.5,11.5,1]){
        cylinder(r=1.5,h=5);
    }
    translate([55.5,41.5,1]){
        cylinder(r=1.5,h=5);
    }
    //side walls
    translate([0,8.5,1]){
        cube([58,0.5,5]);
    }
    translate([0,44,1]){
        cube([58,0.5,5]);
    }
}
       