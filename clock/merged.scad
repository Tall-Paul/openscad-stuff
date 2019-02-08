union(){
    difference(){
        //outside box
        translate([6,6,0]){
            minkowski(){
                cube([48,42,1]);
                cylinder(r=6,h=40);
            }
        }
         //hollow interior
        translate([8,8,0.5]){
            minkowski(){
                cube([44,38,2]);
                cylinder(r=6,h=40);
            }
        }
        //notch top and bottom
        translate([1,9,0.5]){
            cube([58,35,42]);
        }
        //display cutout
        translate([13.5,11.5,0]){
            cube([37,30,3]);
        } 
        //side notches for fitting
        translate([6,0,17]){
            cube([47,2,2]);
        }
        translate([6,52,17]){
            cube([47,2,2]);
        }
        //cutout for light sensor
        translate([10,5,0]){
            cylinder(r=2.5,h=0.5);
        }
    }
    translate([8,2,0.5]){
        cube([4,6,1]);
    }
    
    //mounting posts
    translate([4,11.5,1]){
        cylinder(r=1.5,h=4);
    }
       //bottom left
    translate([4,41.5,1]){
        cylinder(r=1.5,h=4);
    }
     //top right
    translate([56,11.5,1]){
        cylinder(r=1.5,h=4);
    }
    //top left
    translate([56,41,1]){
        cylinder(r=1.5,h=4);
    }
    //post reinforcement
    translate([1,9,1]){
        cube([5,35,2]);
    }
    
    translate([54,9,1]){
        cube([5,35,2]);
    }
    //side walls
    translate([1,8,1]){
        cube([57,1,4]);
    }
    translate([1,44,1]){
        cube([57,1,4]);
    }
}
       