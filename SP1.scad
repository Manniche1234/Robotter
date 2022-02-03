buttom(10,20,100,150);
wallthickness = 3;


module form(radius,height, width,length){
    hull(){
    translate([radius,radius,0])
    cylinder(r=radius, h=height, $fn=100);
        
    translate([width-radius,radius,0])
    cylinder(r=radius, h=height, $fn=100);
        
    translate([radius,length-radius,0])
    cylinder(r=radius, h=height, $fn=100);
        
    translate([width-radius,length-radius,0])
    cylinder(r=radius, h=height, $fn=100);
    }
}

module buttom(corner, height,width,length){
    
 difference(){
    union(){
    //outer
    form(corner,height,width,length);  
    //rim
  translate([wallthickness,wallthickness,3])
    form(corner,height,width-wallthickness*2,length-wallthickness*2);
     }
     //inner
       translate([wallthickness*2,wallthickness*2,5+1])
       form(corner,height,width-wallthickness*4,length-wallthickness*4);
   }
   
   difference(){
    translate([width+20,0,0])
    form(corner, 6,width,length);
    translate([width+20+wallthickness,wallthickness,3])
    form(corner,7,width-wallthickness*2,length-wallthickness*2);
    }
}


  
