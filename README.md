# polyrhythms
inspired by the moog subharmonicon, a 1 to 8-step one to four-lane (hopefully) sequencer for norns whose rhythm is controlled by between one to four tempos per sequencer. Currently non-functional.

Graphics:

The GUI will hopefully be a grid of boxes. Here is an ASCII visualization of what I've been thinking:

On Active Tempos         Sequece
    [1][2][3][4]
___________________________________________
[O] [ ][O][ ][ ]   [ A5][A#5][ O ][   ][   ][   ][   ][   ]
[O] [O][ ][O][ ]   [ B3][B#4][ C5][O  ][ C6][ C7][ D6][D#5]
[ ] [ ][O][ ][ ]   [ A5][A#5][ O ][   ][   ][   ][   ][   ]
[ ] [O][ ][O][ ]   [ B3][B#4][ C5][O  ][ C6][ C7][ D6][D#5]

Tempo 1 [120]       Tempo 3 [240]
Tempo 2 [080]      Tempo 4 [030]

You have to set a tempo for each sequence by adding together tempos like this. This is what creates the odd polyrhythmic rhythm combinations that I personally love from the subharmonicon.

Synth:

I am planning to use the built-in synth that is available by default for norns for this. I may attempt to figure out MIDI out if people want it as well.

Plan:

This is my first Norns script so I plan to grow it like this:
-Plan.
-Get a sequencer running and playing music, any number of steps. Also make it visible somehow.
-Get two sequencers running and playing music, any number of steps.
-Add adjustable tempos.
-Add additive tempos for one sequencer.
-Then for all sequencers.
-Then finish.

Controls:

Something where the buttons select where you are and the knobs change values within your selection. Will figure this out as we go, assuming I ever get time to do this.
