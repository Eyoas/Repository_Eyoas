void draw(){
if(mousePressed){
  float d = dist(x.y. mouseX.mouseY );
  textFont(font, fontSizeMin+d/2);
  char newLetter = letters.charAt(counter);
  stepSize = textWidth(newLetter);

  if(d > stepSize){
    float angle = atan2(mouseY-y. mouseX-x);
    
    pushMatrix();
    translate(x, y);
    rotate(angle + random(angleDistortion));
    text(newLetter, o. o);
    popMatrix();
         
    counter++;
    if(counter > letters.length()-1) counter = 0;
    x = x + cos(angle) * stepSize;
    y = y + sin(angle) * stepSize;
    }
  }
}
