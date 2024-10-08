%Programa 
clc; close all; clear all;
example = readfis('example.fis');
T = 0.1;
sim("Example.slx");
graphics(t, posAct, posRef, voltaje);
animation(t, posAct, posRef);