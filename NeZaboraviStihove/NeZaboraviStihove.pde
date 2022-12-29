import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

AudioPlayer file;
String audioName;
String path;

String displayed, trazeni_stih="", mms, sss, xxs; //s oznacava da je string
int index = 0, suma = 0, br=0, textSize=45, trazeni_it=0, score=0, sizeincrese = 30;
String prethodni_stih = "";

int[] tocni={};
int brojputa;

//treba ga randomizirat u setup-u //ako je =5 to je 6 linija u .lrc/.txt
int NE_ZABORAVI_GA;
PImage img;

boolean value=true, zastavica_za_pauzu=true, menu=true, rect1=false, rect2=false, rect3=false, rect4=false,rect5=false, rect6=true, rect7=false, rect8=false,rect9= false, rect10=false, rect11=false, rect12=false, rect13=false, rect14=false;


int mm=0; //mm je minuta, ss je sekunda
float ss=0.0;
String[] stihovi, p, q;
int r=-1;

int interval; // =2000 //2s
int time;

PFont font;
Minim minim;

void setup() {

  size(1700, 400); 
  font = createFont("lemonyellowsun.otf", textSize);

  img = loadImage("pozadina.jpg");

  textFont(font, textSize);
  fill(255);
  minim = new Minim(this);
}

void draw() {
  textFont(font, textSize);
  
  
  if (!value) {
       
    background(0);

    update();
    fill(0);
    stroke(0);
    rect(100, 70, 250, 80);

    fill(255);
    text("Menu", 150, 128);
    text("Vas rezulutat je : "+ score, width/2 , height/2);
    rect5=overRect(100, 70, 250, 80);

    if(rect5) {
      fill(0);
      stroke(0);
      rect(100-sizeincrese/2, 70-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
      text("Menu", 150, 128);
    }
  }
  
  else if (menu) {

    background(0);
    update();
    fill(0);
    stroke(0);
    
    //rect(100, 70, 250, 80);

    rect(100, 285, 250, 80);

    rect(400, 285, 255, 80);

    rect(700, 285, 250, 80);

    rect(1000, 285, 255, 80);

    rect(1300, 285, 255, 80);
    
    rect(1300, 160, 255, 80);
    rect(1000, 160, 255, 80);
    rect(700, 160, 255, 80);
    rect(400, 160, 255, 80);
    
    //moje
    rect(400, 50, 255, 80);
    rect(700, 50, 255, 80);
    rect(1000, 50, 255, 80);
    rect(1300, 50, 255, 80);

    textFont(font, textSize);
    fill(255);
    text("Izaberi:", 150, 128);
    text("Adele", 150, 340);
    text("Elvis Presely", 430, 340);    
    text("Sia", 750, 340);    
    text("Ed Sheeran", 1050, 340);

    text("Shawn Mendes", 1320, 340);
    text("RHCP", 1360, 215);
    text("MJ", 1060, 215);
    text("Queen", 760, 215);
    text("Weekend", 460, 215);
    
    //moje
    text("Maneskin", 460, 105);
    text("Justin Bieber", 760, 105);
    text("Beyonce", 1060, 105);
    text("Taylor Swift", 1360, 105);


    rect1 = overRect(100, 285, 250, 80);
    
    if (rect1) {
      fill(216,191,216);
      stroke(216,191,216);
      rect(100-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
      text("Adele", 150, 340);
    }

    rect2 = overRect(400, 285, 255, 80);
    
    if (rect2) {
      fill(216,191,216);
      stroke(153);
      rect(400-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
      text("Elvis Presley", 430, 340);
    }
    
    rect5 =! rect5;
    rect3 = overRect(700, 285, 250, 80); 
    
    if (rect3) {
      fill(216,191,216);
      stroke(153);
      rect(700-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
      text("Sia", 750, 340);
    }

    rect4 = overRect(1000, 285, 255, 80); 
    
    if (rect4) {
      fill(216,191,216);
      stroke(153);
      rect(1000-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
      text("Ed Sheeran", 1050, 340);
    }
    
    rect6 = overRect(1300, 285, 255, 80); 
    
    if (rect6) {
      fill(216,191,216);
      stroke(153);
      //edited
      rect(1300-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("Shawn Mendes", 1320, 340);
    }
    
    rect7 = overRect(1300, 160, 255, 80); 
    
    if (rect7) {
      fill(216,191,216);
      stroke(153);
      //edited
      rect(1300-sizeincrese/2, 160-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("RHCP", 1360, 215);
    }
    
    rect8 = overRect(1000, 160, 255, 80);
    
    if (rect8) {
      fill(216,191,216);
      stroke(153);
      //edited
      rect(1000-sizeincrese/2, 160-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("MJ", 1060, 215);
    }
    
    rect9 = overRect(760, 160, 255, 80);
    
    if (rect9) {
      fill(216,191,216);
      stroke(153);
      //edited
      rect(700-sizeincrese/2, 160-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("Queen", 760, 215);
    }
    
    rect10 = overRect(460, 160, 255, 80); 
    
    if (rect10) {
      fill(216,191,216);
      stroke(153);
      //edited
      rect(400-sizeincrese/2, 160-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("Weekend", 460, 215);
    }
    
    rect11 = overRect(400, 50, 255, 80); 
    
    if (rect11) {
      fill(216,191,216);
      stroke(153);
      //edited
      rect(400-sizeincrese/2, 50-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("Maneskin", 460, 105);
    }
    
    rect12 = overRect(700, 50, 255, 80); 
    
    if (rect12) {
      fill(216,191,216);
      stroke(153);
      //edited
      rect(700-sizeincrese/2, 50-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("Justin Bieber", 760, 105);
    }
    
    rect13 = overRect(1000, 50, 255, 80); 
    
    if (rect13) {
      fill(216,191,216);
      stroke(153);
      //edited
      rect(1000-sizeincrese/2, 50-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("Beyonce", 1060, 105);
    }
    
    rect14 = overRect(1300, 50, 255, 80); 
    
    if (rect14) {
      fill(216,191,216);
      stroke(153);
      //edited
      rect(1330-sizeincrese/2, 50-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
      fill(0);
      noStroke();
      rect(100, 285, 250, 0);
      fill(255);
  // edited
      text("Taylor Swift", 1360, 105);
    }
    
  }
  
  else {
    
    //ovdje je dosao do stiha koji treba pogodit
    if (br % NE_ZABORAVI_GA == 0 && br > 0) {
         
      if (file.isPlaying()) {
        
        file.pause();

        for (int c = 0; c < displayed.length(); c++) {

          char slovo = displayed.charAt(c); 
          if ((slovo >= 'a' && slovo <= 'z') || (slovo >= 'A' && slovo <= 'Z')) {
            trazeni_stih += '_';
          }
          
          else trazeni_stih += slovo;
        }
      }

      if (value) {
        background(img);
        fill(150,150,150);
        text(prethodni_stih, width/2 - textWidth(prethodni_stih)/2, height/2 - 85);
        fill(0);
        text(trazeni_stih, width/2 - textWidth(trazeni_stih)/2, height/2);
      }
    }
    
    else {
      
      background(img);
      fill(0);

      text(displayed, width/2 - textWidth(displayed)/2, height/2);
      text("Trenutno: "+ score, 20 , 50);



      if (score>=0 && br==index+1) {
        /*background(0);
         fill(255);
         text(displayed, width/2 - textWidth(displayed)/2, height/2);
         */
        int odmak = 0, j=0;

        for (int i = 0; i < p.length; i++) {
          
          fill(255, 25, 25);
          
          if (j<tocni.length) {
            
            if (i == tocni[j]) {
              
              fill(15, 255, 23);
              j++;
            }
          }

          text(p[i], width/2 - textWidth(displayed)/2 + odmak, height/2 + 50);
          odmak += textWidth(p[i]+" ");
        }
      }


      if (millis() - time > interval) {

        fill(0);

        if (score>0 && br==index+1) { 
          br++;
        }
        prethodni_stih = stihovi[index++].substring(10);
        displayed = stihovi[index].substring(10);
        br ++;
        println("br = " + br);

        if ( index+1 == stihovi.length) {
          value=false;
          //noLoop();
          background(0);
          text(displayed + ".š", width/2 - textWidth(displayed)/2, height/2);
        }
        
        else {
          mms = stihovi[index+1].substring(1, 3); 
          sss = stihovi[index+1].substring(4, 9);
          mm = parseInt(mms); 
          ss = parseFloat(sss); 
          //println(mms + " " +sss);


          suma += interval;
          interval = 60*mm*1000 + int(ss*1000) - suma; 
          //println("interval: "+interval);

          time  = millis();
        }
      }
    }
  }
}

void mouseClicked() {
  if (menu) {
    
    int k;
    
    if (rect1) {  
      
      k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      
      if (r==0) { 
        audioName = "Adele - Rolling In The Deep.mp3";
        stihovi = loadStrings("Adele - Rolling In The Deep.lrc");
      }
      
      else if (r==1) {

        audioName = "Adele - Hello.mp3";
        stihovi = loadStrings("Adele - Hello.lrc");
      }
      
      else if (r==2) {

        audioName = "Adele - When We Were Young.mp3";
        stihovi = loadStrings("Adele - When We Were Young.lrc");
      }
    }
    
    else if (rect2) {
      
      k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      
      if (r==0) { 
     
        audioName = "Elvis Presley - All Shook Up.mp3";
        stihovi = loadStrings("Elvis Presley - All Shook Up.txt");
      }
      
      else if (r==1) {

        audioName = "Elvis Presley - Can't Help Falling In Love.mp3";
        stihovi = loadStrings("Elvis Presley - Can't Help Falling In Love.lrc");
      }
      
      else if (r==2) {

        audioName = "Elvis Presley - Jailhouse Rock.mp3";
        stihovi = loadStrings("Elvis Presley - Jailhouse Rock.lrc");
      }
    
    }
    
    else if (rect3){   
    
      k=(int)random(0, 3);
    
      while(k==r)
        k=(int)random(0, 3);
        
      r=k;
      
      if (r==0) {               
      audioName = "Sia - Cheap Thrills.mp3";
      stihovi = loadStrings("Sia - Cheap Thrills.lrc");
      }
      
      else if (r==1) {

        audioName = "Sia - Never Give Up.mp3";
        stihovi = loadStrings("Sia - Never Give Up.lrc");
      }  
      else if (r==2) {

        audioName = "Sia - Chandelier.mp3";
        stihovi = loadStrings("Sia - Chandelier.lrc");
      }
    }
    
    else if (rect4) {
      
      k=(int)random(0, 3);
      while(k==r)k=(int)random(0, 3);
      r=k;
      
      if (r==0) {
        
        audioName = "Ed Sheeran - Photograph.mp3";
        stihovi = loadStrings("Ed Sheeran - Photograph.lrc");
      }
      
      else if (r==1) {

        audioName = "Ed Sheeran - Galway Girl.mp3";
        stihovi = loadStrings("Ed Sheeran - Galway Girl.lrc");
      }
      
      else if (r==2) {

        audioName = "Ed Sheeran - Perfect.mp3";
        stihovi = loadStrings("Ed Sheeran - Perfect.lrc");
      }

    }
  
    else if (rect6) { 
      
      k=(int)random(0, 3);
      
      while(k==r)
        k=(int)random(0, 3);
        
      r=k;
      
      if (r==0) {
        
        audioName = "Shawn Mendes - Wonder.mp3";
        stihovi = loadStrings("Shawn Mendes - Wonder.lrc");
      }
      
      else if (r==1) {
  
          audioName = "Shawn Mendes, Camila Cabello - Señorita.mp3";
          stihovi = loadStrings("Shawn Mendes, Camila Cabello - Señorita.lrc");
      } 
        
      else if (r==2) {
  
        audioName = "Shawn Mendes - Monster.mp3";
        stihovi = loadStrings("Shawn Mendes - Monster.lrc");
      }
        
    }
  
    else if (rect7) {
      
      k=(int)random(0, 3);
      
      while(k==r)
        k=(int)random(0, 3);
      r=k;
        
      if (r==0) {   
        audioName = "Red Hot Chilli Peppers - By The Way.mp3";
        stihovi = loadStrings("Red Hot Chili Peppers - By The Way.lrc");
      }
       
      else if (r==1) {
         audioName = "Red Hot Chilli Peppers - Californication.mp3";
         stihovi = loadStrings("Red Hot Chilli Peppers - Californication.lrc");
      }
      
      else if (r==2) {
  
        audioName = "Red Hot Chilli Peppers - Snow.mp3";
        stihovi = loadStrings("Red Hot Chilli Peppers - Snow.lrc");
      }
    }
  
    else if (rect8) {  
      k=(int)random(0, 3);
      
      while(k==r)
        k=(int)random(0, 3);
      r=k;
      
      if (r==0) {  
        
        audioName = "Michael Jackson - Smooth Criminal.mp3";
        stihovi = loadStrings("Michael Jackson - Smooth Criminal.lrc");
      }
      
      else if (r==1) {
        audioName = "Michael Jackson - Beat It.mp3";
        stihovi = loadStrings("Michael Jackson - Beat It.lrc");
  
      } 
      
      else if (r==2) {
  
        audioName = "Michael Jackson - Billie Jean.mp3";
        stihovi = loadStrings("Michael Jackson - Billie Jean.lrc");
      }
    }
  
    else if (rect9) {
      
      k=(int)random(0, 3);
      
      while(k==r)
        k=(int)random(0, 3);
        
      r=k;
      
      if (r==0) {   
        audioName = "Queen - We Will Rock You.mp3";
        stihovi = loadStrings("Queen - We Will Rock You.lrc");
      }
      
      else if (r==1) {
        audioName = "Queen - I Want To Break Free.mp3";
        stihovi = loadStrings("Queen - I Want To Break Free.lrc");
  
      } 
      
      else if (r==2) {
  
        audioName = "Queen - Bohemian Rhapsody.mp3";
        stihovi = loadStrings("Queen - Bohemian Rhapsody.lrc");
      }
    }

    else if (rect10) {  
      
      k=(int)random(0, 3);
      
      while(k==r)
        k=(int)random(0, 3);
        
      r=k;
      
      if (r==0) {   
        audioName = "The Weeknd - Blinding Lights.mp3";
        stihovi = loadStrings("The Weeknd - Blinding Lights.lrc");
      }
      
      else if (r==1) {
        
        audioName = "The Weeknd - Starboy.mp3";
        stihovi = loadStrings("The Weeknd - Starboy.lrc");
  
      } 
      else if (r==2) {
  
        audioName = "The Weeknd - The Hills.mp3";
        stihovi = loadStrings("The Weeknd - The Hills.lrc");
      }
      
    }
    
    else if (rect14) {  
      
      k=(int)random(0, 3);
      
      while(k==r)
        k=(int)random(0, 3);
        
      r=k;
      
      if (r==0) {   
        audioName = "Taylor Swift - Red.mp3";
        stihovi = loadStrings("Taylor Swift - Red.lrc");
      }
      
      else if (r==1) {
        
        audioName = "Taylor Swift - Bad Blood.mp3";
        stihovi = loadStrings("Taylor Swift - Bad Blood.lrc");
  
      } 
      else if (r==2) {
  
        audioName = "Taylor Swift - Blank Space.mp3";
        stihovi = loadStrings("Taylor Swift - Blank Space.lrc");
      }
      
    }
    
    else if (rect11) {  
      
      k=(int)random(0, 3);
      
      while(k==r)
        k=(int)random(0, 3);
        
      r=k;
      
      if (r==0) {   
        audioName = "Maneskin - Zitti E Buoni.mp3";
        stihovi = loadStrings("Maneskin - Zitti E Buoni.lrc");
      }
      
      else if (r==1) {
        audioName = "Maneskin - Begging.mp3";
        stihovi = loadStrings("Maneskin - Begging.lrc");
  
      } 
      else if (r==2) {
        audioName = "Maneskin - Moriro.mp3";
        stihovi = loadStrings("Maneskin - Moriro.lrc");
      }
    }
    
    else if (rect13) {  
      
      k=(int)random(0, 3);
      
      while(k==r)
        k=(int)random(0, 3);
        
      r=k;
      
      if (r==0) {   
        audioName = "Beyonce - All The Single Ladies.mp3";
        stihovi = loadStrings("Beyonce - All The Single Ladies.lrc");
      }
      
      else if (r==1) {
        
        audioName = "Beyonce - Irreplaceable.mp3";
        stihovi = loadStrings("Beyonce - Irreplaceable.lrc");
  
      } 
      else if (r==2) {
  
        audioName = "Beyonce - Halo.mp3";
        stihovi = loadStrings("Beyonce - Halo.lrc");
      }
      
    }
    
    else if (rect12) {  
      
      k=(int)random(0, 3);
      
      while(k==r)
        k=(int)random(0, 3);
        
      r=k;
      
      if (r==0) {   
        audioName = "Justin Bieber - Love Yourself.mp3";
        stihovi = loadStrings("Justin Bieber - Love Yourself.lrc");
      }
      
      else if (r==1) {
        
        audioName = "Justin Bieber - Ghost.mp3";
        stihovi = loadStrings("Justin Bieber - Ghost.lrc");
  
      } 
      else if (r==2) {
  
        audioName = "Justin Bieber - Sorry.mp3";
        stihovi = loadStrings("Justin Bieber - Sorry.lrc");
      }
      
    }
  
    if(rect1 || rect2 || rect3 || rect4 || rect6 || rect7 || rect8 || rect9 || rect10 || rect11 || rect12 || rect13 || rect14){
        file =  minim.loadFile(audioName);
        file.loop();
        background(0);
        displayed = stihovi[index].substring(10); 
        mms = stihovi[index+1].substring(1, 3); 
        sss = stihovi[index+1].substring(4, 9); 
        mm = parseInt(mms);
        ss = parseFloat(sss);
        interval = int(ss*1000); 
    
        textFont(font, 25);
        fill(255);
    
        time = millis();
        menu=false;
        file.play();
        
        if(stihovi.length < 20) NE_ZABORAVI_GA = (int)random(1, stihovi.length/3);
        else if(stihovi.length < 35) NE_ZABORAVI_GA = (int)random(1, stihovi.length/4);
        else NE_ZABORAVI_GA = (int)random(1, stihovi.length/5);
        println(NE_ZABORAVI_GA);
      
    }
  }
  
  else if(!value){
  
    if(rect5){
      value = true;
      menu = true;
      file.close();
      index = 0;
      update();/*
      rect1=false;
      rect2=false;
      rect3=false;
      rect4=false;*/
      index = 0;
      suma = 0; 
      br=0; 
      trazeni_it=0; 
      brojputa=0;
      displayed = stihovi[index].substring(10); 
      mms = stihovi[index+1].substring(1, 3); 
      sss = stihovi[index+1].substring(4, 9); 
      mm = parseInt(mms);
      ss = parseFloat(sss);
      interval = int(ss*1000); 
      br=0;
    }
  
  }
  
  else {
    
    if (br % NE_ZABORAVI_GA == 0 && br > 0) {
    
      brojputa++;
      br++;

      println("brputa " + brojputa);
      println("broj " + brojputa);

      time = millis();
      tocni = new int[0];

      score();
      trazeni_stih = "";
      trazeni_it = 0;
      br = 0;
      if(stihovi.length < 20) NE_ZABORAVI_GA = (int)random(1, stihovi.length/3);
      else if(stihovi.length < 35) NE_ZABORAVI_GA = (int)random(1, stihovi.length/4);
      else NE_ZABORAVI_GA = (int)random(1, stihovi.length/5);
      println(NE_ZABORAVI_GA);
      file.play();
   
    }
  }
}

void keyPressed() {
  //println(key);
  if (key == ' ' || key == ENTER ) return;
  if (key == BACKSPACE || key == DELETE) {
    if (trazeni_it == 0) return;

    char slovo = trazeni_stih.charAt(--trazeni_it);

    if ((slovo >= 'a' && slovo <= 'z') || (slovo >= 'A' && slovo <= 'Z')) {
      
      if (trazeni_it == 0) trazeni_stih = '_' + trazeni_stih.substring(1); 
      else trazeni_stih = trazeni_stih.substring(0, trazeni_it) + '_' + trazeni_stih.substring(trazeni_it+1);
    }
  }
  
  else if (trazeni_it < trazeni_stih.length()) {
    
    char slovo = trazeni_stih.charAt(trazeni_it);
    while ( ! (slovo=='_')) {
      
      trazeni_it++;
      slovo = trazeni_stih.charAt(trazeni_it);
    }
    
    if (trazeni_it == trazeni_stih.length())
      return;
    trazeni_stih = trazeni_stih.substring(0, trazeni_it++) + key + trazeni_stih.substring(trazeni_it);

    //if (trazeni_stih.charAt(trazeni_it) == ' ' || trazeni_stih.charAt(trazeni_it) == ',' || trazeni_stih.charAt(trazeni_it) == '\'') trazeni_it++;
    //trazeni_stih = trazeni_stih.substring(0,trazeni_it++) + key + trazeni_stih.substring(trazeni_it);
  }
}

void score() {
  p = splitTokens(displayed.toLowerCase(), " ");
  q = splitTokens(trazeni_stih.toLowerCase(), " ");

  for (int i=0; i < p.length; i++) {
    if ( p[i].equals(q[i]) ) {
      score += 100;
      tocni = append(tocni, i);
    }
  }
}

boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  }
  
  else {
    return false;
  }
}

void update() {
  noFill();
  stroke(0);
  rect(100-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
  rect(400-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
  rect(700-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
  rect(1000-sizeincrese/2, 285-sizeincrese/2, 250+sizeincrese, 80+sizeincrese);
  rect1 = rect2 = rect3 = rect4 = false;
}
