union(){
    difference(){
        //outside box
        translate([6,6,0]){
            minkowski(){
                cube([48,42,1]);
                cylinder(r=6,h=16);
            }
        }
        //hollow interior
        translate([12,8,0]){
            minkowski(){
                cube([36,38,2]);
                cylinder(r=6,h=16);
            }
        }
        //ridge for interior
        translate([7,7,0]){
            minkowski(){
                cube([46,40,1]);
                cylinder(r=6,h=1);
            }
        }
        //display cutout
        translate([14,12,0]){
            cube([36,30,3]);
        }
        //notches in inside top & bottom wall
        translate([1,9,0]){
            cube([58,36,17]);
        }
    }
    
}
       