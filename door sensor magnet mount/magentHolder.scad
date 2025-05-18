$fn=36;

difference(){
    union(){
        translate([9,0,0]){
            cube([37,20,10]);
        }
        translate([9,10,0]){
            cylinder(10,10,10);
        }
        translate([46,10,0]){
            cylinder(10,10,10);
        }
    }
    //cube([55,20,10]);
    translate([9.5,1,0.5]){
        cube([36,18,9.5]);
    }
    translate([5,10,0]){
        cylinder(10,2,2);
        cylinder(2,4,4);
    }
    
    translate([50,10,0]){
        cylinder(10,2,2);
        cylinder(2,4,4);
    }
}