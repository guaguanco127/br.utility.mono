# Ableton Max for Live device: br.utility.mono.2.0  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.mono.2.0, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.mono](https://github.com/guaguanco127/br.utility.mono)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  

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

A stereo audio effect with a Mono button (lit = mono, dark = stereo passes through) and a Mix menu. Ableton's own Utility has a single Mono switch; this device lets you choose how the two sides are combined. Mono and Mix are Live parameters, so you can automate them or map them to a controller.

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have Ableton Live Suite installed on your computer, and that Live is closed while installing. 

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.utility.mono.2.0.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  
  
4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track where you want it.
