# Max/MSP RNBO Patch for External or VST Creation: br.utility.mono.rnbo.2.2  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.mono.2.2, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.mono](https://github.com/guaguanco127/br.utility.mono)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[What is a VST or AU Audio Plugin?](#VST)  
[How To Export as a Max/MSP External](#Export)  
[How To Export as a VST or AU Audio Plugin](#ExportVST)  

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

One patch now does both jobs (1.0 had two). Inside [rnbo~], the Mono and Mix params are the plugin parameters, and inlets 3 and 4 set the same params, so the external has the same four inlets as the abstraction: L, R, Mono, Mix. The gen~ code inside is the same as br.utility.mono.2.2.

There is no State output (as of 2.2): whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="VST"></a>What is a VST or AU Audio Plugin? 

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.utility.mono.rnbo.2.2.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.utility.mono.2.2~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.utility.mono.2.2, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.utility.mono.2.2~ in any patch. It has the same inlets as the abstraction (L, R, Mono, Mix), except that Mono takes numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer** 

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.utility.mono.rnbo.2.2.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The Mono (off/on) and Mix (0 / -3 / -4.5 / -6 dB) parameters show up in your DAW for automation.
