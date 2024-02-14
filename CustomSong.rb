use_bpm 156
use_synth :bass_foundation
#measure 1
live_loop :main do
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
  play :b3
  sleep 0.5
  play :b3
  sleep 0.5
  play :b3
  sleep 0.5
  play :b3
  sleep 0.5
  
  play :d4
  sleep 1
  
  play :b3
  sleep 0.5
  play :b3
  sleep 0.5
  
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

sleep 4

live_loop :beat do
  sample :bd_tek
  sleep 4
end
