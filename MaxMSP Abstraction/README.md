# Max/MSP Abstraction: br.utility.mono.2.1  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.mono.2.1, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.mono](https://github.com/guaguanco127/br.utility.mono)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)   
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State) 

## <a name="About"></a>About

Turns a stereo signal into mono, click-free: Left + Right goes to both outputs. Switching Mono on or off crossfades over 10 ms, and every Mix change glides over 10 ms, so nothing clicks while audio plays. Works at any sample rate.

Mix sets how much the sum is turned down, because L + R adds up to a different level depending on the source:

| Mix | Gain | Use it for | Why |
|---|---|---|---|
| 0 | 0 dB | Sound on one side only | The silent side adds nothing, so the level is already right |
| 1 | -3 dB | Stereo: L and R different | Different signals add up about 3 dB louder on average |
| 2 | -4.5 dB | A full mix: centered and wide parts together | Halfway between -3 and -6: centered parts come out 1.5 dB louder, wide parts 1.5 dB quieter, the smallest error for both |
| 3 | -6 dB (default) | Dual mono: L and R the same | Identical signals add up exactly twice as loud (+6 dB), so halving gives it back unchanged |

When in doubt use -6 dB: it is the only setting that can never clip.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.utility.mono.2.1 | No UI. The plain object to patch with |
| br.utility.mono.ui.2.1 | With a Mono button and a Mix menu, ready for a [bpatcher] |
| _br.utility.mono.example.2.1 | Example patch: open this first |

The UI version contains the plain version and has the same inlets and outlets, so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed, and that the Max patch you are using is saved inside a folder.  

2. Copy the .maxpat files you want into the same folder as your patch. The UI version needs the plain version next to it (br.utility.mono.ui.2.1 uses br.utility.mono.2.1).

3. In your patch, create an object called br.utility.mono.2.1. For the version with controls, create a [bpatcher] and choose br.utility.mono.ui.2.1.maxpat as its patcher.

## <a name="Use"></a>How To Use

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Mono | Signal or Float (UI: Int only) | 0 = off, stereo passes through; 1 = on, L + R to both outputs | 1 (on) |
| 4 | Mix | Int | 0 = 0 dB, 1 = -3 dB, 2 = -4.5 dB, 3 = -6 dB | 3 (-6 dB) |

Outlets 1 / 2: Left Out / Right Out (Signal). With Mono on, both carry the same mono signal.  
Outlet 3: State (Message), see [State outlet](#State)

The Mono inlet also takes a signal, so a square wave can switch between stereo and mono (the example patch shows one). In the UI version, numbers into the Mono and Mix inlets move the button and the menu, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

## <a name="State"></a>State outlet

The last outlet of every abstraction (State) sends the current settings as named messages the moment they change: `mono 1` and `mix 3`. Use it to keep a display, Mira or another patch in sync. Pick it out by name with [route mono mix], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| mono | Int | 0 - 1, 1 = mono |
| mix | Int | menu index 0 - 3: 0 = 0 dB, 1 = -3 dB, 2 = -4.5 dB, 3 = -6 dB |

Only numbers are reported: if a signal drives the Mono inlet of the plain version, nothing comes out of State. Mix is sent as the menu index, the same number the Mix inlet takes, so a State message can go straight back into an inlet. The example patch has a State outlet tab that shows all of this, and the RNBO patch shows the same [route mono mix].


Double-click the object to see inside it and study how it was built.
