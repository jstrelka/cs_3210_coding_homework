/*
AUTHOR: Justin Strelka
ASSIGNMENT: Homework07
DATE: 4/6/20
TIME TAKEN: 15 MIN
*/

directlyIn(katarina, olga).
directlyIn(olga, natasha).
directlyIn(natasha, irina).

in(X, Y) :- directlyIn(X, Y).
in(X, Y) :- directlyIn(X, Z), in(Z, Y). 