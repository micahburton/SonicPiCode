# CHALLENGE D: Use functions to optimize the SpongeBob theme!

use_bpm 136
use_synth :piano

#define notes
define :main_notes do |amp|
  play:E3, amp: amp
  sleep 1
  play:B3, amp: amp
  play:E4, amp: amp
  sleep 1
  play:B3, amp: amp
  sleep 1
  play:E4, amp: amp
  sleep 1
end

define :two do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end

define :three do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end

define :five do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end

live_loop:background_notes do
  main_notes 0.25
  
  main_notes 0.5
  
  main_notes 0.7
  
  5.times do
    main_notes 1
  end
  stop
end
live_loop :second do
  8.times do
    sample :drum_tom_mid_soft
    sleep 4
  end
  stop
end
# Measure 1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

# Measure 2, 8
two

# Measure 3, 4, 6
three

# Measure 4
three

# Measure 5
five

# Measure 6
three

# Measure 7
five

# Measure 8
two

#ending
sleep 1
play:Gs4
play:E5
sleep 2
play:Gs4
play:E4
sleep 1
play :r

sleep 1
play:Gs4
play:E5
sleep 2
play:Gs4
play:E4
sleep 1
play :r

sleep 1
play:Gs4
play:E5
sleep 2
play:Gs4
play:E4
sleep 1
play :r
