#Custom Song: 1985 by Bo Burnham
#Sheet music source: https://musescore.com/user/43966751/scores/8282177
use_bpm 156
use_synth :bass_foundation
#Sample Source: https://www.youtube.com/watch?v=_8uLs551BRk
intro = "C:/Users/micah_burton/Downloads/KDFW-TV Dallas (Channel 4) 6pm News Open 1985.mp3"

#define measure three main notes
define :measureThree do
  play :b3
  sleep 0.5
end

sample intro, amp: 2

sleep 64

amp = 0.2
#measure 1
live_loop :main do
  4.times do
    play :g4
    sleep 0.5
    play :e4
    sleep 0.5
    play :e4
    sleep 0.5
    play :e4
    sleep 0.5
    
    play :g4
    sleep 0.5
    play :e4
    sleep 0.5
    
    play :r
    sleep 0.5
    
    play :e4
    sleep 0.5
    
    #measure 2
    play :d4
    sleep 0.5
    play :d4
    sleep 0.5
    play :d4
    sleep 0.5
    play :e4
    sleep 0.5
    
    play :e4
    sleep 0.5
    
    play :r
    sleep 1
    
    play :a3
    sleep 0.5
    
    #measure 3
    measureThree
    measureThree
    measureThree
    measureThree
    
    play :d4
    sleep 1
    
    measureThree
    measureThree
    
    #measure 4
    play :a3
    sleep 0.5
    play :a3
    sleep 0.5
    play :a3
    sleep 0.5
    play :g3
    sleep 0.5
    
    play :e3
    sleep 0.5
    
    play :r
    sleep 0.5
    
    play :r
    sleep 1
  end
  stop
end

sleep 16

live_loop :beat do
  12.times do
    sample :bd_tek
    sleep 4
  end
  stop
end

sleep 16

live_loop :third do
  with_fx :band_eq do
    32.times do
      sample :bd_sone, amp: amp
      sleep 0.5
      sample :drum_snare_soft, amp: amp
      sleep 0.5
      amp = amp + 0.04
    end
  end
  stop
end
