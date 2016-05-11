
  //Les differentes pin qui lisent
  const int rc1 = 2;
  const int rc2 = 3;
  const int rc4 = 4;
  const int rc8 = 5;
  //const int rc16 =6;
  
  int combi = 0;
  

void setup() {
  //pinMode(out, OUTPUT);
  pinMode(rc1, INPUT_PULLUP);
  pinMode(rc2, INPUT_PULLUP); 
  pinMode(rc4, INPUT_PULLUP);
  pinMode(rc8, INPUT_PULLUP);
 // pinMode(rc16, INPUT_PULLUP);
  
  Serial.begin(9600);
  Serial.println("Arduino ready to work");
}

void loop() {
  combi = 0;
  if(digitalRead(rc1)==LOW)combi++;
  if(digitalRead(rc2)==LOW)combi+=2;
  if(digitalRead(rc4)==LOW)combi+=4;
  if(digitalRead(rc8)==LOW)combi+=8;
  //if(digitalRead(rc16)==LOW)combi+=16;
  
  //if(combi!=0){ Décommenter si on ne veut rien recevoir quand aucun objet sur le socle
    if(Serial.available()==0) Serial.println(combi); //L'arduino n'a rien reçu->peut envoyer
  //}
  delay(1000);
}
