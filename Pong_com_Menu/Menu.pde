
class Menu {
  boolean Gt;
  boolean pause;
  boolean wipeC;
  boolean wipeInT;
  String J1;
  String J2;
  String tp;
  float IniciartHigh;
  float IniciarbHigh;
  Menu() {
    Gt = false;//game toggle
    pause =false;//pauses game if true
    wipeC = false; //if true wipes the screen for the config menu
    J1 = "Jogador1"; // names the player1
    J2 = "Jogador2"; // names the player2
    wipeInT = false; //wipes screen for the instructions menu
    IniciartHigh = 0;//text highlight
    IniciarbHigh = 255;//background highlight
  }
  void openGame() {//opens the game and allows instruction menu to pop up
    if (!wipeC&&mousePressed &&mouseButton ==LEFT && mouseX<=530*width/1280 && mouseX >= 30*width/1280 && mouseY >= 160*height/720 && mouseY<= 360*height/720) {
      Gt = true; // triggers the screen wipe & opens the instructions
    }
    if (!wipeC&&mousePressed &&mouseButton ==LEFT && mouseX<=width-30*width/1280 && mouseX >=width-530*width/1280 && mouseY >= height-360*height/720 && mouseY<= height-160*height/720) {
      wipeInT = true; // wipes the instructions and plays the game
    }
    if (mouseX<=width-30*width/1280 && mouseX >=width-530*width/1280 && mouseY >= height-360*height/720 && mouseY<= height-160*height/720) {
      IniciartHigh = 255; //highlights the button and text
      IniciarbHigh = 50;
    } else {
      IniciartHigh = 0;
      IniciarbHigh = 255;
    }
    if (Gt && !wipeInT) {
      if (mousePressed&&mouseButton ==RIGHT) {
        Gt = false;
      }
      background(0);
      rectMode(CORNER);
      fill(IniciarbHigh);
      rect(width-530*width/1280, height-360*height/720, 500*width/1280, 200*height/720);
      textMode(CENTER);
      textSize(100);
      fill(IniciartHigh);
      text("Iniciar", 120*width/1280+width-530*width/1280, 140*height/720+height-360*height/720);
      textSize(20);
      fill(255);
      text("   O Jogador 1 (que é controlado pelas teclas 'w' & 's') fica a esquerda e o jogador 2 (que é comandado pelos botões direito e\n esquerdo do mouse),  a direita. O objetivo de cada jogador é fazer com que a bola vermelha chegue ao outro lado da tela.\n caso a bola ultrapasse a raquete do jogador 2, o jogador 1 marca um ponto e vice versa. O jogador que atingir a pontuação\n selecionada primeiro vence. Você pode pausar o jogo a qualquer momento apertando a tecla 'backspace', e também pode\n voltar ao menu anterior usando o botão do meio do mouse. Quando estiver pronto aperte iniciar.", 30, 30);
    }
    if (Gt && wipeInT) {
      jogo();
      if (pause&&mousePressed&&mouseButton ==CENTER) {
        wipeInT = false;
      }
    }
    if (!wipeInT&&!Gt&&!wipeC) {
      background(0);
      fill(255);
      rect(30*width/1280, 160*height/720, 500*width/1280, 200*height/720);
      textMode(CENTER);
      textSize(100);
      fill(0);
      text("Jogar", 150*width/1280, 300*height/720);
    }
  }
  void pause() {
    
    if (keyPressed&& key ==BACKSPACE) {
      pause = true;
    }
    if((mousePressed&&(mouseButton==RIGHT||mouseButton==LEFT))||(keyPressed&&key !=BACKSPACE)){
    pause = false;
    }
  }
  void config() {
    if (!wipeC && !Gt) {
      rectMode(CORNER);
      fill(255);
      rect(width-530*width/1280, 160*height/720, 500*width/1280, 200*height/720);
      textSize(100);
      fill(0, 0, 0);
      text("Opções", 820*width/1280, 300*height/720);
    }
    if (mousePressed &&mouseButton ==LEFT && mouseX<=width-30 && mouseX >=width-530 && mouseY >= 160 && mouseY<= 360) {
      wipeC = true; // trigerrs the screen wipe & opens the options menu
    }
    if (mousePressed&&mouseButton ==RIGHT) {//return button
      wipeC = false;
    }
  }
  void opt() { //options menu
    if (wipeC&&!Gt){
    background(0);
    fill(255);
    rectMode(CORNER);
    rect(width-width*530/1280, 30*height/720, 500*width/1280, 200*height/720);
    rect(30*width/1280, 30*height/720, 500*width/1280, 200*height/720);
    textSize(100);
    rect(30*width/1280, 260*height/720, 500*width/1280, 200*height/720);
    rect(width-530*width/1280, 260*height/720, 500*width/1280, 200*height/720);
    rect(30*width/1280, 490*height/720, 500*width/1280, 200*height/720);
    rect(width-530*width/1280, 490*height/720, 500*width/1280, 200*height/720);
    fill(255, 0, 0);
    textSize(40);
    text("Pontos para a \nvitoria: ", width*100/1280, 360);
    text("Nome do Jogador 1: ", width*100/1280, height*120/720);
    text("Nome do Jogador 2: ", width-500*width/1280, 120*height/720);
    
    }
    }
  }
