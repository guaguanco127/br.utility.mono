# Max/MSP Abstraction: br.utility.mono.abs.1.0  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.mono.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.mono.1.0](https://github.com/guaguanco127/br.utility.mono.1.0)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max/MSP version 8.5.6.

## Table of Contents 

[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use) 
 
 

## <a name="About"></a>About

This is a basic abstraction that allows the user to sum a stereo signal into Mono with 3 different mix settings.  
Currently works in any sample rate or bit depth.


## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max/MSP 8 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. For the normal version of this abstraction, copy and paste br.utility.mono.abs.1.0.maxpat inside of the same folder as the Max patch you are using.     

3. In the Max patch you are using, create an object called br.utility.mono.abs.1.0 

## <a name="Use"></a>How To Use

The first two inlets are for the left and the right stereo signals. The 3rd inlet either bypasses the effect, or turns it on. An integer of 0 and 1 turns it off and on. The 4th inlet adjusts the 3 different mix settings for the mono signal: 0 = -0.0 dB, 1 = -3.0 dB, 2 = -6.0 dB. The default is 2. 

Double click on the object and you can see inside of the object. This way you can study how it was built. 
    



 





