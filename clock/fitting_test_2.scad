use <includes/roundedcube.scad>
difference(){
    translate([6,6,0]){
        minkowski(){
            cube([48,42,1]);
            cylinder(r=6,h=1);
        }
    }
    translate([12,10,0]){
        cube([38,34,3]);
    }
}
       