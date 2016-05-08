import ddf.minim.*;
import ddf.minim.ugens.*;
 
Minim       minim;
AudioOutput out;
Oscil       wave;

void setup() {
  //fullScreen();
  clear();
  load_images_to_pixel();
  load_images_print();
   minim = new Minim(this);
 
  // use the getLineOut method of the Minim object to get an AudioOutput object
  out = minim.getLineOut();
 
  // create a sine wave Oscil, set to 440 Hz, at 0.5 amplitude
  wave = new Oscil( 440, 0.5f, Waves.SINE );
  // patch the Oscil to the output
  wave.patch( out );
}

void draw() {
 wave = new Oscil( 440, 0.5f, Waves.SINE );
}

void keyPressed()
{ 
  switch( key )
  {
    case '1': 
      wave.setWaveform( Waves.SINE );
      break;
 
    case '2':
      wave.setWaveform( Waves.TRIANGLE );
      break;
 
    case '3':
      wave.setWaveform( Waves.SAW );
      break;
 
    case '4':
      wave.setWaveform( Waves.SQUARE );
      break;
 
    case '5':
      wave.setWaveform( Waves.QUARTERPULSE );
      break;
 
    default: break; 
  }
}