/*
Acompañamiento cifras COVID

Con este archivo se sobre pone una secuencia de notas MIDI que envía un controlador hecho con Arduino a la sonificación de las cifras del COVID.
Estas notas MIDI funcionarán como fondo para la melodía principal que son las cifras (para que suenen las cifras es necesario tener ambos archivos abiertos y haber realizado el arreglo completo antes de correr este código).

Mariana Vázquez Esponda
*/

//======================================================

s.boot;
//establece conexión MIDI
MIDIIn.connect;

//Toma los valores que se reciben por MIDI y los reproduce
(
MIDIdef.noteOn(\noteOnTest, {
	arg vel, nn, chan, src;
//Imprime los valores MIDI recibidos (para tener checar q funcione correctamente)
	[vel, nn].postln;
	Synth.new(\tone, [\freq, nn.midicps, \amp, vel/127]);
});
)

//SynthDef
(
SynthDef.new(\tone, {
	arg freq=440, amp=0.9;
	var sig, env;
	sig = Klank.ar(`[ (1..13)*freq, 1/(1..13), nil ], PinkNoise.ar(0.01));
	env = EnvGen.kr(Env.perc, doneAction:2);
	sig = sig * env * amp;
	Out.ar(0,sig);
}).add;
)

//Interfaz gráfica para poder jugar con MIDI sobre el arreglo de las cifras
PdefAllGui(2);

//MVE 2020