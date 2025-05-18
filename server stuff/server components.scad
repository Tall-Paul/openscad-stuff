wall_thickness = 4;
bay_height = 35;
bays = 4;
caddy_width = 110;
bezel_depth = 35;
cage_depth = 149;
backplane_width = 113;
backplane_height = 143;
fan_height = 30;
backplane_offset_y = wall_thickness - 0.5;
backplane_offset_z = wall_thickness - 1;

cage_width = caddy_width + wall_thickness*2;
cage_height = (bay_height*4)+wall_thickness*2;

pcie_bracket_thickness=1.5;

$fn=36;

module gpu_stand(){
   difference(){
        union(){
            translate([-3,5,-50]){
                cube([10,170,55]);
            }
            translate([153,5,-50]){
                cube([10,170,65]);
            }
            
        }
        translate([0,7,-19]){
            cube([1,166,40]);
        }
        translate([-3,90,-50]){
            rotate([0,90,0]){
                cylinder(200,50,65);
            }
        }
    }
    difference(){
        union(){
            translate([-3,5,-50]){
                //cube([30,170,5]);
            }
            translate([-3,5,-50]){
                cube([165,10,5]);
            }
            translate([-3,165,-50]){
                cube([165,10,5]);
            }
            translate([153,5,-50]){
                //cube([10,170,5]);
            }
            translate([-3,5,-50]){
                cube([30,10,65]);
            }
            translate([-3,165,-50]){
                cube([30,10,65]);
            }
            translate([153,5,-50]){
                cube([10,10,65]);
            }
            translate([153,165,-50]){
                cube([10,10,65]);
            }

           
            translate([17,5,12]){
                cube([10,170,3]);
            }
            translate([17,5,2]){
                cube([2,170,10]);
            }
            translate([7,5,2]){
                cube([10,170,3]);
            }
        }
        translate([2,0,-40]){
            //cube([20,200,30]);
        }
        translate([50,10,-50]){
            cylinder(10,2,2);
        }
        translate([130,10,-50]){
            cylinder(10,2,2);
        }
        translate([50,170,-50]){
            cylinder(10,2,2);
        }
        translate([130,170,-50]){
            cylinder(10,2,2);
        }
    }
    
}

module front_panel_fan(){
    difference(){
        cube([30,150,150]);
        translate([3,15,15]){
            cube([30,120,120]);
        }
        translate([0,75,75]){
            rotate([0,90,0]){
                cylinder(20,55,55);
            }
        }
    }
}
module pci_bracket() {
union() {
difference() {
union () {
translate([0,-0.25,0]) cube([115,18.5,pcie_bracket_thickness],center=true);
translate([58.5,2.5,0]) cube([8,18.5,pcie_bracket_thickness],center=true);
}
translate([57,-13.7,0]) rotate([0,0,40]) cube([10,10,10],center=true);
translate([55,16,0]) rotate([0,0,40]) cube([10,10,10],center=true);
translate([-50,-12.5,0]) rotate([0,0,45]) cube([10,10,10],center=true);
translate([-50,12.5,0]) rotate([0,0,45]) cube([10,10,10],center=true);
translate([-55,-10.5,0]) cube([10,10,10],center=true);
translate([-55,10.5,0]) cube([10,10,10],center=true);
}
difference() {
translate([62,2.5,6]) cube([pcie_bracket_thickness,18.5,11],center=true);
translate([62,10.75,5.5]) cube([2,6,4],center=true);
translate([62,8,5.5]) rotate([0,90,0]) cylinder(r=2,h=2,center=true);
}
}
}

module vga_hole() { //28 long
translate([12.5,0,0]) cylinder(r=1.5,h=10,center=true);
translate([-12.5,0,0]) cylinder(r=1.5,h=10,center=true);
cube([19,11,10],center=true);
}

module dvi_hole() { //36 long
union() {
translate([16.5,0,0]) cylinder(r=1.5,h=10,center=true);
translate([-16.5,0,0]) cylinder(r=1.5,h=10,center=true);
cube([24.5,9,10],center=true);
}
}

module drive_cage_damper(){
    union(){
        cube([10,3,cage_height]);
        translate([5,3+wall_thickness,19]){
            rotate([90,0,0]){
                cylinder(wall_thickness,1.6,1.6);
            }
        }
        translate([5,3+wall_thickness,19+bay_height]){
            rotate([90,0,0]){
                cylinder(wall_thickness,1.6,1.6);
            }
        }
         translate([5,3+wall_thickness,19+bay_height*2]){
            rotate([90,0,0]){
                cylinder(wall_thickness,1.6,1.6);
            }
        }
        translate([5,3+wall_thickness,19+bay_height*3]){
            rotate([90,0,0]){
                cylinder(wall_thickness,1.6,1.6);
            }
        }
    }
}

module gpu_bracket() {
    difference() {
        pci_bracket();
        translate([-30,0,0]) {
        //translate([35,1,0]) {
        vga_hole();
        translate([60,0,0]) {
        // translate([-41,-2,0]) {
          dvi_hole();
        }
     }
}
}



module psu(){
    cube([160,150,86]);
}

module cpu_cooler(){
    translate([20,0,0]){
        cube([20,360,120]);
    }
    fan();
    translate([0,120,0]){
        fan();
    }
    translate([0,240,0]){
        fan();
    }
}

module fan(){
    difference(){
        cube([20,120,120]);
        translate([0,60,60]){
            rotate([0,90,0]){
                cylinder(20,55,55);
            }
        }
    }
    
}

module gpu(){
    translate([0,0,15]){
        cube([312,63,111.5]);
    }
    translate([45,61,0]){
        cube([85,2,15]);
    }
    translate([33,61,5]){
        cube([8,2,10]);
    }
    translate([0,61,5]){
        cube([15,2,10]);
    }
    
    translate([0,36,38]){
        rotate([90,270,270]){
            gpu_bracket();
        }
    }
    translate([0,54,38]){
        rotate([90,270,270]){
            gpu_bracket();
        }
    }
}

module motherboard(){
  cube([300,330,30]);
}

module support_board(){
        cube([500,320,10]);
        translate([0,330,0]){
            cube([500,600,10]);
        }
}

module fan_holder(){
    translate([5+bezel_depth+cage_depth+3,(cage_width-105)/2,cage_height-wall_thickness-115]){
        rotate([0,90,0]){
            cylinder(fan_height,2.2,2.2);
            translate([0,105,0]){
                cylinder(fan_height,2.2,2.2);
            }
            translate([-105,0,0]){
                cylinder(fan_height,2.2,2.2);
            }
            translate([-105,105,0]){
                cylinder(fan_height,2.2,2.2);
            }
        }
        //bottom left corner
        translate([0,-2,-3]){
                cube([13,20,5]);     
        }
        //top piece
        translate([0,-3,103]){
                cube([13,backplane_width,6]);     
        }
        //top left sticky up bit
        translate([0,-3,108]){
                cube([13,5,9]);     
        }
        translate([13,-3,113]){
                cube([10,5,4]);     
        }
        //top right sticky up bit
        translate([0,backplane_width-9,108]){
                cube([13,5,9]);     
        }
        translate([13,backplane_width-9,113]){
                cube([10,5,4]);     
        }
        //right piece
        translate([0,backplane_width-11,-3]){
                cube([13,6,34]);     
        }
        //left sticky down bit
        translate([0,-2,-26]){
                cube([13,5,23]);     
        }
        translate([13,-2,-11]){
                cube([10,6,4]);     
        }
        //right sticky down bit
        translate([0,105,-26]){
                cube([13,6,23]);     
        }
        translate([13,105,-11]){
                cube([10,6,4]);     
        }
        //horizontal middle piece
        translate([0,13,30]){
                cube([13,95,5]);     
        }
        //vertical left piece
        translate([0,13,-3]){
                cube([13,5,108]);     
        }
        //vertical right piece
        translate([0,55,30]){
                cube([13,5,78]);     
        }
        
    }
}


module nubbin(){
    difference(){
             cube([2,backplane_width,1]);                
             translate([0,0,1]){
                 rotate([0,33,0]){
                    cube([4,backplane_width,2]);
                 }
             }
         }
}


module backplane(){
    translate([bezel_depth+cage_depth+5,0,0-wall_thickness]){
        union(){
            difference(){
                cube([15,cage_width,cage_height]);
                //hollow out space for backplane to sit
                translate([0,backplane_offset_y,backplane_offset_z]){
                    cube([15,backplane_width,backplane_height]);
                }
                //cutout for cable
                translate([3,backplane_offset_y+backplane_width,65]){
                    cube([12,8,25]);
                }
                
            }
            translate([3,wall_thickness,wall_thickness-1]){
                nubbin();
            }
            translate([3,backplane_offset_y+backplane_width,backplane_offset_z+backplane_height]){
                rotate([0,180,180]){
                     nubbin();
                }
            }    
        }
        //fan();
    }
}

module cage_body(){
//main body
difference(){
    translate([5+bezel_depth,0,0]){
        cube([cage_depth,wall_thickness,bay_height]);
    }
    translate([25+bezel_depth,4,15]){
        rotate([90,0,0]){
            cylinder(wall_thickness,2,1.5);
        }
    }
    translate([5+bezel_depth+cage_depth-20,4,15]){
        rotate([90,0,0]){
            cylinder(wall_thickness,2,1.5);
        }
    }
}
//lower track strip
translate([5+bezel_depth,wall_thickness,0])cube([cage_depth,3.5,7]);
difference(){   
    //upper track strip
    translate([5+bezel_depth,wall_thickness,(bay_height-1)-7])cube([149,3.5,8]);
    //connector inset
    translate([5+bezel_depth,wall_thickness,(bay_height-4)])cube([10,6,6]);
   
}

}

module bezel_body(){
    //main body
        difference(){
            translate([5,0,0]){
                cube([bezel_depth,wall_thickness,bay_height]);
            }
            translate([8,2,2]){
                cube([7,wall_thickness-2,bay_height-4]);
            }
            
        }
    //bottom rail
    translate([15,wall_thickness,0])cube([bezel_depth-10,3.5,7]);
    //top rail
    translate([15,wall_thickness,27])cube([bezel_depth-10,3.5,8]);
    //connectors
    translate([20,wall_thickness,(35-3.5)])cube([30,3.5,3.5]);

}

module bezel_front(left,depth,width){
       //front indents
        initial = 27;
        for(i=[0:4]){
          difference(){
            loop_offset = initial + ((i-1)*35);
            if (i == 0) {
                translate([5,left,0]){
                    cube([depth,width,7]);
                }
            } else if (i == 4){
                translate([5,left,loop_offset]){
                    cube([depth,width,11]);
                } 
            } else {
                translate([5,left,loop_offset]){
                    cube([depth,width,15]);
                } 
            }
          }
        }
}

module drive_cage(){
        translate([5+bezel_depth,0,0-wall_thickness])cube([cage_depth,cage_width,wall_thickness]);
        translate([5+bezel_depth,0,bay_height*4])cube([cage_depth,cage_width,wall_thickness]);
        for(i=[0:3]){
            translate([0,0,i*bay_height]){
                union(){
                    cage_body();
                    translate([0,cage_width,0])mirror([0,1,0])cage_body();
                }
            }
                
        }
        
}

module bezel(){
        difference(){
                translate([5,0,0-wall_thickness])cube([bezel_depth,cage_width,wall_thickness]);
                translate([15,20,0-wall_thickness]){
                        cylinder(10,2.5,2.5);
                }
                translate([15,cage_width-20,0-wall_thickness]){
                        cylinder(10,2.5,2.5);
                }
        }
                translate([5,0,bay_height*4])cube([bezel_depth,cage_width,wall_thickness]);
        for(i=[0:3]){
            translate([0,0,i*bay_height]){
                union(){
                    bezel_body();
                    translate([0,cage_width,0])mirror([0,1,0])bezel_body();
                }
            }
                
    }
    
    bezel_front(wall_thickness+caddy_width-3.5,3,3.5);
    bezel_front(0,13,wall_thickness+3.5);
}



module full_drive_cage(){
    bezel();
    drive_cage();
    backplane();
    fan_holder();
}

module everything(){
    translate([0,0,-20]){
    support_board();
    }
    translate([300,5,5]){
        psu();
    }

    translate([50,585,-4]){
        motherboard();
    }

    translate([40,345,40]){
        gpu();
        gpu_stand();
    }
    translate([40,420,40]){
        gpu();
        gpu_stand();
    }
    translate([40,495,40]){
        gpu();
        gpu_stand();
    }

    translate([0,335,0]){
        front_panel_fan();
    }
    translate([0,475,0]){
        front_panel_fan();
    }

    rotate([90,0,0]){
        translate([0,0,-150]){
            full_drive_cage();
        }
    }

    rotate([90,0,0]){
        translate([0,0,-300]){
            full_drive_cage();
        }
    }

    translate([400,530,5]){
        cpu_cooler();
    }
}

module printable_drive_cage_part1(){
    drive_cage();
    backplane();
}

module printable_drive_cage_part2(){
    bezel();
}

module printable_drive_cage_part3(){
    fan_holder();
}

module printable_drive_cage_damper(){
    drive_cage_damper();
}

module printable_gpu_support(){
    gpu_stand();
}

//Uncomment 1 of the below//

//everything();
//printable_drive_cage_part1();
//printable_drive_cage_part2();
//printable_drive_cage_part3();
//printable_gpu_support();    


gpu_stand();


