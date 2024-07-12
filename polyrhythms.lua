-- polyrhythms
-- 0.0.1 @echoe
-- l.llllllll.co/polyrhythms
--
-- some code is better than no code, maybe.
-- a ton of code snatched from firstlight, and this is not yet tested. :)
--
-- E1 - with k2 down, change selected sequence, 1 through 4. else change selected tempo, 1 through 4
-- E2 - change which note you have selected in the sequence. else do nothing
-- E3 - change the value of the note you have selected. else change the tempo you have selected
--
-- K2: switch whether you're editing tempos or sequences
-- K3: this is not used currently

engine.name = 'PolyPerc'

sequins = require 'sequins' -- a sequencer library built into norns, see: https://monome.org/docs/norns/reference/lib/sequins

function init()
    -- set the initial settings.
    --first, all the note values
    note1_1=C4
    note1_2=C4
    note1_3=C4
    note1_4=C4
    note1_5=C4
    note1_6=C4
    note1_7=C4
    note1_8=C4
    note2_1=C4
    note2_2=C4
    note2_3=C4
    note2_4=C4
    note2_5=C4
    note2_6=C4
    note2_7=C4
    note2_8=C4
    note3_1=C4
    note3_2=C4
    note3_3=C4
    note3_4=C4
    note3_5=C4
    note3_6=C4
    note3_7=C4
    note3_8=C4
    note4_1=C4
    note4_2=C4
    note4_3=C4
    note4_4=C4
    note4_5=C4
    note4_6=C4
    note4_7=C4
    note4_8=C4
    --now we set the sequencers to all the notes
    seq1 = sequins(note1_1,note1_2,note1_3,note1_4,note1_5,note1_6,note1_7,note1_8)
    seq2 = sequins(note2_1,note2_2,note2_3,note2_4,note2_5,note2_6,note2_7,note2_8)
    seq3 = sequins(note3_1,note3_2,note3_3,note3_4,note3_5,note3_6,note3_7,note3_8)
    seq4 = sequins(note4_1,note4_2,note4_3,note4_4,note4_5,note4_6,note4_7,note4_8)
    --are the sequencers on?
    seq1_on=true
    seq2_on=false
    seq3_on=false
    seq4_on=false
    --set sequence tempo
    seq1_tempo=tempo1
    seq2_tempo=tempo2
    seq2_tempo=tempo3
    seq2_tempo=tempo4
    --set tempo
    tempo1 = 120
    tempo2 = 120
    tempo3 = 120
    tempo4 = 120
    --what are we editing?
    sequences = (seq1, seq2, seq3, seq4)
    edit_tempo = 1
    edit_sequence = 1
    edit_note = 1
    -- configure the synth
    engine.release(1)
    engine.pw(0.5)
    engine.cutoff(1000)

-- encoder
-- E1 - change selected sequence, 1 through 4
-- E2 - set selected tempo
-- E3 - change which note you have selected in the sequence, 1 through 8
--
-- K2: change selected sequence note - start, and 1 through 8
-- K3: switch selected tempo, 1 through 4
function enc(n, delta)
    if n==1 then
      -- E1 change selected sequence
      sequences.length = util.clamp(sequences.length+delta,1,#sequences.data)
      edit = util.clamp(edit,1,sequences.length)
    elseif n==2 then
      -- E2 change which tempo to edit
      edit = util.clamp(edit+delta,1,delays.length)
    elseif n==3 then
      -- E3 change which step to edit
      edit_note = util.clamp(edit_note+delta,1,delays.length)
    end
  end
  
  
  -- key
  function key(n,z)
    if n==3 and z==1 then
      -- K3, on key down toggle chimes true/false
      chimes = not chimes
    elseif n==2 and z==1 then
      --[[ 0_0 ]]--
      sequence = not sequence
    end
  end
  
  
  --------------------------------------------------------------------------------
  -- screen redraw
  function redraw()
    screen.clear()
    screen.line_width(1)
    screen.aa(0)
    draw_wind()
  
    -- draw bars for numbers
    offset = 64 - delays.length*2
    for i=1,delays.length do
      screen.level(i==delays.ix and 15 or 1)
      screen.move(offset+i*4,60)
      screen.line_rel(0,delays[i]*-4+-1)
      screen.stroke()
    end
  
    -- draw edit position
    screen.level(10)
    screen.move(offset+edit*4,62)
    screen.line_rel(0,2)
    screen.stroke()
  
    screen.update()
  end