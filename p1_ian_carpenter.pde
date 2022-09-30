boolean fl1 = false;
boolean fl2 = false;
boolean fl3 = false;
boolean fl4 = false;
boolean fl5 = false;
boolean call = false;
boolean fire = false;
boolean open = false;
boolean close = false;
String txt = " ";
String txt2 = " ";

void setup()
{
  size(550, 750);
  background(400, 175, 75);

  //5th floor rect
  fill(0);
  rect(235, 205, 43, 45);
  fill(200);
  //ellipse(300, 223, 33, 33); //button
  textSize(33);
  text("5", 250, 228); 
  
  //4th floor rect
  fill(0);
  rect(235, 275, 43, 45); 
  fill(200);
  //ellipse(300, 293, 33, 33); //button
  textSize(33);
  text("4", 250, 298); 
  
  //3rd floor rect
  fill(0);
  rect(235, 345, 43, 45);
  fill(200);
  //ellipse(300, 363, 33, 33); //button
  textSize(33);
  text("3", 250, 368); 

  //2nd floor rect
  fill(0);
  rect(235, 415, 43, 45);
  fill(200);
  //ellipse(300, 433, 33, 33); //button
  textSize(33);
  text("2", 250, 438); 

  //1st floor rect
  fill(0);
  rect(235, 485, 43, 45);
  fill(200);
  //ellipse(300, 503, 33, 33); //button
  textSize(33);
  text("1", 250, 508); 


  //open door rect
  fill(0);
  rect(320, 565, 55, 45);
  fill(200);
  triangle(360, 570, 372, 580, 360, 590); //x1, y1, x2, y2, x3, y3 right triangle
  fill(200);
  triangle(335, 570, 323, 580, 335, 590); //x1, y1, x2, y2, x3, y3 left triangle
  fill(200);
  rect(345, 570, 5, 20); //middle line
  fill(200);
  ellipse(395, 583, 33, 33); //button


  //close door rect
  fill(0);
  rect(175, 565, 55, 45);
  fill(200);
  triangle(185, 570, 195, 580, 185, 590);
  fill(200);
  triangle(220, 570, 210, 580, 220, 590); 
  fill(200);
  rect(200, 570, 5, 20); //middle line
  fill(200);
  ellipse(250, 583, 33, 33); 
  
  //Fire button rect
  fill(0);
  rect(323, 645, 50, 45); 
  fill(200);
  ellipse(397, 663, 33, 33); 
  textSize(30);
  text("Fire", 323, 670);

  //Call button rect
  fill(0);
  rect(175, 645, 50, 45);
  fill(200);
  ellipse(250, 663, 33, 33); 
  textSize(30);
  text("Call", 175, 670);
}

void draw()
{
  update(mouseX, mouseY);
  f1();
  ellipse(300, 503, 33, 33);
  f2();
  ellipse(300, 433, 33, 33);
  f3();
  ellipse(300, 363, 33, 33);
  f4();
  ellipse(300, 293, 33, 33);
  f5();
  ellipse(300, 223, 33, 33);
  call();
  ellipse(250, 663, 33, 33); 
  fire();
  ellipse(397, 663, 33, 33);
  open();
  ellipse(395, 583, 33, 33);
  close();
  ellipse(250, 583, 33, 33); 
  
  elvScreen();
  flnum();
}

void f1() 
{
  if (fl1) 
  {
    fill(200,200,0);
  } 
  else 
  {
    fill(222);
  }
  
  ellipse(300, 503, 33, 33);;
}
void f2() 
{
  if (fl2) 
  {
    fill(200,200,0);
  } 
  else 
  {
    fill(222);
  }
  
  ellipse(300, 433, 33, 33);
}
void f3() 
{
  if (fl3) 
  {
    fill(200,200, 0);
  } 
  else 
  {
    fill(222);
  }
  
  ellipse(300, 363, 33, 33);
}
void f4() 
{
  if (fl4) 
  {
    fill(200,200,0);
  } 
  else 
  {
    fill(222);
  }
  
  ellipse(300, 293, 33, 33);
}
void f5() 
{
  if (fl5) 
  {
    fill(200,200, 0);
  } 
  else 
  {
    fill(222);
  }
  
  ellipse(300, 223, 33, 33);
}

void call() 
{
  if (call) 
  {
    fill(200,200, 0);
  } 
  else 
  {
    fill(222);
  }
  
  ellipse(250, 663, 33, 33);
}

void fire() 
{
  if (fire) 
  {
    fill(200,200, 0);
  } 
  else 
  {
    fill(222);
  }
  
  ellipse(397, 663, 33, 33);
}

void open() 
{
  if (open) 
  {
    fill(200,200, 0);
  } 
  else 
  {
    fill(222);
  }
  
  ellipse(395, 583, 33, 33);
}

void close() 
{
  if (close) 
  {
    fill(200,200, 0);
  } 
  else 
  {
    fill(222);
  }
  
  ellipse(250, 583, 33, 33);
}

void elvScreen() 
{
  fill(0);
  rect(145, 15, 250, 175);
}
void flnum() 
{
  fill(250, 50, 50);
  textSize(55);
  text(txt, 200, 125);
  textSize(55);
  text(txt2, 200, 125);
}

void update(int x, int y) 
{
  if (hoverf1 (300, 503, 33))
  {
    fl5 = false;
    fl4 = false;
    fl3 = false;
    fl1 = true;
    fl2 = false;
    call = false;
    open = false;
    close = false;
    fire = false;
  }
  else if (hoverf2 (300, 433, 33))
  {
    fl5 = false;
    fl4 = false;
    fl3 = false;
    fl1 = false;
    fl2 = true;
    call = false;
    open = false;
    close = false;
    fire = false;
  }
  else if (hoverf3 (300, 363, 33)) 
  {
    fl5 = false;
    fl4 = false;
    fl3 = true;
    fl1 = false;
    fl2 = false;
    call = false;
    open = false;
    close = false;
    fire = false;
  }
  else if (hoverf4 (300, 293, 33))
  {
    fl5 = false;
    fl4 = true;
    fl3 = false;
    fl1 = false;
    fl2 = false;
    call = false;
    open = false;
    close = false;
    fire = false;
  }
  else if (hoverf5 (300, 223, 33)) 
  {
    fl5 = true;
    fl4 = false;
    fl3 = false;
    fl1 = false;
    fl2 = false;
    call = false;
    open = false;
    close = false;
    fire = false;
  }
  else if (hoverCall (250, 663, 33)) 
  {
    fl5 = false;
    fl4 = false;
    fl3 = false;
    fl1 = false;
    fl2 = false;
    call = true;
    open = false;
    close = false;
    fire = false;
  }
  else if (hoverFire (397, 663, 33)) 
  {
    fl5 = false;
    fl4 = false;
    fl3 = false;
    fl1 = false;
    fl2 = false;
    call = false;
    open = false;
    close = false;
    fire = true;
  }
  else if (hoverOpen (395, 583, 33)) 
  {
    fl5 = false;
    fl4 = false;
    fl3 = false;
    fl1 = false;
    fl2 = false;
    call = false;
    open = true;
    close = false;
    fire = false;
  }
  else if (hoverClose (250, 583, 33)) 
  {
    fl5 = false;
    fl4 = false;
    fl3 = false;
    fl1 = false;
    fl2 = false;
    call = false;
    open = false;
    close = true;
    fire = false;
  }
  else
    fl1 = fl2 = fl3 = fl4 = fl5 = call = fire = open = close = false;
}

void mousePressed() 
{
  if (fl1) 
  {
    txt = "1";
    txt2 = "";
  }
  else if (fl2) 
  {
    txt = "2";
    txt2 = "";
  }
  else if (fl3) 
  {
    txt2 = "3";
    txt = "";
  }
  else if (fl4) 
  {
    txt2 = "4";
    txt = "";
  }
  else if (fl5) 
  {
    txt2 = "5";
    txt = "";
  }
  else if (call) 
  {
    txt2 = "Calling";
    txt = "";
  }
  else if (fire) 
  {
    txt2 = "Alert!";
    txt = "";
  }
  else if (open) 
  {
    txt2 = "Opening";
    txt = "";
  }
  else if (close) 
  {
    txt2 = "Closing";
    txt = "";
  }
}

boolean hoverf1 (int x, int y, int diameter) 
{
  float dX = x - mouseX;
  float dY = y - mouseY;
  
  if (sqrt(sq(dX) + sq(dY)) < diameter/2) 
  {
    return true;
  } 
  else 
  {
    return false;
  }
}

boolean hoverf2 (int x, int y, int diameter) 
{
  float dX = x - mouseX;
  float dY = y - mouseY;
  
  if (sqrt(sq(dX) + sq(dY)) < diameter/2) 
  {
    return true;
  } 
  else 
  {
    return false;
  }
}

boolean hoverf3 (int x, int y, int diameter) 
{
  float dX = x - mouseX;
  float dY = y - mouseY;
  
  if (sqrt(sq(dX) + sq(dY)) < diameter/2) 
  {
    return true;
  } 
  else 
  {
    return false;
  }
}

boolean hoverf4 (int x, int y, int diameter) 
{
  float dX = x - mouseX;
  float dY = y - mouseY;
  
  if (sqrt(sq(dX) + sq(dY)) < diameter/2) 
  {
    return true;
  } 
  else 
  {
    return false;
  }
}

boolean hoverf5 (int x, int y, int diameter) 
{
  float dX = x - mouseX;
  float dY = y - mouseY;
  
  if (sqrt(sq(dX) + sq(dY)) < diameter/2) 
  {
    return true;
  } 
  else 
  {
    return false;
  }
}

boolean hoverCall (int x, int y, int diameter) 
{
  float dX = x - mouseX;
  float dY = y - mouseY;
  
  if (sqrt(sq(dX) + sq(dY)) < diameter/2) 
  {
    return true;
  } 
  else 
  {
    return false;
  }
}

boolean hoverFire (int x, int y, int diameter) 
{
  float dX = x - mouseX;
  float dY = y - mouseY;
  
  if (sqrt(sq(dX) + sq(dY)) < diameter/2) 
  {
    return true;
  } 
  else 
  {
    return false;
  }
}

boolean hoverOpen (int x, int y, int diameter) 
{
  float dX = x - mouseX;
  float dY = y - mouseY;
  
  if (sqrt(sq(dX) + sq(dY)) < diameter/2) 
  {
    return true;
  } 
  else 
  {
    return false;
  }
}

boolean hoverClose (int x, int y, int diameter) 
{
  float dX = x - mouseX;
  float dY = y - mouseY;
  
  if (sqrt(sq(dX) + sq(dY)) < diameter/2) 
  {
    return true;
  } 
  else 
  {
    return false;
  }
}
