# polyrhythms

inspired by the moog subharmonicon, a 1 to 8-step one to four-lane (hopefully) sequencer for norns whose rhythm is controlled by between one to four tempos per sequencer. Currently non-functional.

## Graphics:

The GUI will hopefully be a grid of boxes. Here is an ASCII visualization of what I've been thinking:

```
 On  | Active Tempos | Sequece
       [1][2][3][4]
___________________________________________
 [O] | [ ][O][ ][ ]  |  [ A5][A#5][ O ][   ][   ][   ][   ][   ]
 [O] | [O][ ][O][ ]  |  [ B3][B#4][ C5][O  ][ C6][ C7][ D6][D#5]
 [ ] | [ ][O][ ][ ]  |  [ A5][A#5][ O ][   ][   ][   ][   ][   ]
 [ ] | [O][ ][O][ ]  |  [ B3][B#4][ C5][O  ][ C6][ C7][ D6][D#5]

Tempo 1 [120]       Tempo 3 [240]
Tempo 2 [080]      Tempo 4 [030]
```

You have to set a tempo for each sequence by adding together tempos like this. This is what creates the odd polyrhythmic rhythm combinations that I personally love from the subharmonicon.

## Synth:

I am planning to use the built-in synth that is available by default for norns for this. I may attempt to figure out MIDI out if people want it as well.

## Controls:

Something where the buttons select where you are and the knobs change values within your selection. Current plan:

-- E1 - with k2 down, change selected sequence, 1 through 4. else change selected tempo, 1 through 4
-- E2 - change which note you have selected in the sequence. else do nothing
-- E3 - change the value of the note you have selected. else change the tempo you have selected
--
-- K2: switch whether you're editing tempos or sequences
-- K3: this is not used currently

## Plan/current status:

This is my first Norns script so I plan to grow it in steps. Here are the steps and current overview of how far into them I am.

### Plan. 
50%
### Have a compiling script!
10%
### Get a sequencer running and playing music, any number of steps. Also make it visible somehow. 
0%
### Get two sequencers running and playing music, any number of steps.
0%
### Add adjustable tempos.
0%
### Add additive tempos for one sequencer.
0%
### Then for all sequencers.
0%
### Then finish.
0%
