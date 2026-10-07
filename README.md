# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.utility.mono.2.0
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.mono.2.0, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.mono](https://github.com/guaguanco127/br.utility.mono)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.utility.mono/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.utility.mono/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external, or a VST or AU audio plugin (needs RNBO)  
[Ableton Max for Live Device](https://github.com/guaguanco127/br.utility.mono/tree/main/Ableton%20Max%20For%20Live) To use inside of Ableton Suite   

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

You can use it as an abstraction within Max/MSP or as a Max for Live device within Ableton Live Suite. With RNBO you can also build your own Max external or VST/AU plugin from the included RNBO patch.

## <a name="New"></a>What's new in 2.0

- **Mix numbers changed.** A new -4.5 dB setting (for full mixes) sits between -3 and -6, and the menu is now in order of value. Mix 2 used to mean -6 dB and now means -4.5 dB; -6 dB is now Mix 3 (still the default). If a 1.0 patch sends Mix 2, change it to 3.
- -3 and -6 dB are now exact (-6 dB is exactly half), so dual mono at -6 dB comes out bit-for-bit unchanged.
- Switching Mono on and off crossfades over 10 ms, and Mix changes glide over 10 ms (1.0 jumped in about half a millisecond, which could click).
- Mono is on by default (1.0's abstraction loaded switched off). The 3rd inlet is now called Mono (1.0: On/Off) and takes a signal as well as a number.
- New UI version with a Mono button and a Mix menu, plus an example patch.
- One RNBO patch now makes both the Max external and the VST3/AU plugin. Prebuilt externals are no longer included: the abstraction does the same job, so build an external only if you need one.
- The Max for Live parameters are named Mono and Mix (1.0's were "live.text" and "live.menu"), so they read clearly in Live's automation lanes.
- File names changed (no more `.abs`). The inlets are in the same order as 1.0: L, R, Mono, Mix.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.utility.mono.2.0 | No UI. The plain object to patch with |
| br.utility.mono.ui.2.0 | With a Mono button and a Mix menu, ready for a [bpatcher] |
| _br.utility.mono.example.2.0 | Example patch: open this first |

The UI version contains the plain version and has the same inlets and outlets, so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

## <a name="Use"></a>How To Use

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Mono | Signal or Float (UI: Int only) | 0 = off, stereo passes through; 1 = on, L + R to both outputs | 1 (on) |
| 4 | Mix | Int | 0 = 0 dB, 1 = -3 dB, 2 = -4.5 dB, 3 = -6 dB | 3 (-6 dB) |

Outlets 1 / 2: Left Out / Right Out (Signal). With Mono on, both carry the same mono signal.

The Mono inlet also takes a signal, so a square wave can switch between stereo and mono (the example patch shows one). In the UI version, numbers into the Mono and Mix inlets move the button and the menu, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.
