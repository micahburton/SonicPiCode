# Welcome to Sonic Pi
use_bpm 160
use_synth :bass_foundation
i = 0
j = 0
amp = 0

#Custom Song: 1985 by Bo Burnham
#Sheet music source: https://musescore.com/user/43966751/scores/8282177
i = 0
j = 0
amp2 = 0
use_synth :bass_foundation
#Sample Source: https://www.youtube.com/watch?v=_8uLs551BRk
intro = "C:/Users/micah_burton/Downloads/KDFW-TV Dallas (Channel 4) 6pm News Open 1985.mp3"
outro = "C:/Users/micah_burton/Downloads/welcomesample.mp3"
noteArray = [:r, :c4, :d4, :f4, :g4, :f4, :r, :r, :g4, :a4, :g4, :r, :a4, :f4, :r, :r, :a4, :a4, :a4, :g4, :f4, :g4, :a4, :g4, :f4, :d4, :c4, :d4, :f4, :a4, :r]
sleepTimes = [1, 0.5, 0.5, 0.5, 0.75, 1.25, 1, 0.25, 0.5, 0.5, 0.5, 0.375, 0.375, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5]
#define measure three main notes
define :measureThree do
  play :b3
  sleep 0.5
end

define :playNote do |note, sleepDuration|
  play note
  sleep sleepDuration
end

sample intro, amp: 2

sleep 64

amp = 0.2

live_loop :notes do
  4.times do
    32.times do
      if i < noteArray.length && j < sleepTimes.length
        play noteArray[i]
        sleep sleepTimes[j]
        i = i + 1
        j = j + 1
      end
    end
    i = 0
    j = 0
    sleep 0.1
  end
  stop
end

sleep 18

live_loop :snap do
  27.times do
    sample :perc_snap2, amp: amp2
    sleep 2
    if amp2 < 0.6
      amp2 = amp2 + 0.04
    end
  end
  stop
end

sleep 18

live_loop :drums do
  18.times do
    sample :drum_heavy_kick, amp: 1
    sleep 2
  end
  stop
end

sleep 40

#measure 1
live_loop :main do
  4.times do
    playNote :g4, 0.5
    playNote :e4, 0.5
    playNote :e4, 0.5
    playNote :e4, 0.5
    
    playNote :g4, 0.5
    playNote :e4, 0.5
    
    playNote :r, 0.5
    
    playNote :e4, 0.5
    
    #measure 2
    playNote :d4, 0.5
    playNote :d4, 0.5
    playNote :d4, 0.5
    playNote :e4, 0.5
    
    playNote :e4, 0.5
    
    playNote :r, 1
    
    playNote :a3, 0.5
    
    #measure 3
    measureThree
    measureThree
    measureThree
    measureThree
    
    playNote :d4, 1
    
    measureThree
    measureThree
    
    #measure 4
    playNote :a3, 0.5
    playNote :a3, 0.5
    playNote :a3, 0.5
    playNote :g3, 0.5
    
    playNote :e3, 0.5
    
    playNote :r, 0.5
    
    playNote :r, 1
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

sleep 29

sample outro
