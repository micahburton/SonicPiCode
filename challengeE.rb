# Challenge E
use_bpm 180
use_synth :chipbass

# VARIABLES TO STORE SAMPLES
coin = "C:/Users/micah_burton/Downloads/mario_sounds/mario_sounds/coin.wav"
jump = "C:/Users/micah_burton/Downloads/mario_sounds/mario_sounds/jump.wav"
beat = "C:/Users/micah_burton/Downloads/mario_sounds/mario_sounds/mario_beat.wav"
intro = "C:/Users/micah_burton/Downloads/mario_sounds/mario_sounds/mario_intro.wav"
mushroom = "C:/Users/micah_burton/Downloads/mario_sounds/mario_sounds/mushroom.wav"
oneup = "C:/Users/micah_burton/Downloads/mario_sounds/mario_sounds/oneup.wav"
pipe = "C:/Users/micah_burton/Downloads/mario_sounds/mario_sounds/pipe.wav"

#Mario
sample intro
sleep 8

# INTRO
play :e4
sleep 0.5
play :e4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :e4
sleep 1
play :g4
sleep 2
play :g3
sleep 2

live_loop :main do
  4.times do
    # PART ONE
    play :c4
    sleep 1.5
    play :g3
    sleep 1.5
    play :e3
    sleep 1.5
    play :a3
    sleep 1
    play :b3
    sleep 1
    play :bb3
    sleep 0.5
    play :a3
    sleep 1
  end
  stop
end

live_loop :sample do
  4.times do
    # PART ONE
    sample coin, amp: 2
    sleep 1.5
    sample pipe
    sleep 1.5
    sample jump, amp: 0.5
    sleep 1.5
    sample coin, amp: 2
    sleep 1
    sample jump, amp: 0.5
    sleep 1
    sample pipe
    sleep 0.5
    sample coin, amp: 2
    sleep 1
  end
  stop
end

sleep 32
#PART TWO
play :g3
sleep 2/3.0 #0.666666...
play :e4
sleep 2/3.0 #0.666666...
play :g4
sleep 2/3.0 #0.666666...
play :a4
sleep 1
play :f4
sleep 0.5
play :g4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :d4
sleep 0.5
play :b3
sleep 1

sample mushroom
