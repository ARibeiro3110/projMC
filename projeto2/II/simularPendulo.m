% Script principal para simular o movimento do duplo pêndulo
clc; clear;

g = 9.81;

% 3. (a)
[T, m1, m2, l1, l2, a1, b1, a2, b2] = deal(10, 1, 1, 2, 2, pi/4, 0, 0, 0);


% 3. (b)
% [T, m1, m2, l1, l2, a1, b1, a2, b2] = deal(100, 4, 2, 3, 4, pi/2, pi/6, pi/4, pi/12);


duploPendulo(T, m1, m2, l1, l2, a1, b1, a2, b2)
% animarDuploPendulo(T, m1, m2, l1, l2, a1, b1, a2, b2)