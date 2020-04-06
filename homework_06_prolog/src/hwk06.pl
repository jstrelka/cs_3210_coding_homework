/*
Author: Justin Strelka
Assignment: HWK_06
Date: 4/5/20
*/
mountain(everest).
mountain(aconcagua).
mountain(mt_McKinley).
mountain(kilimanjaro).
mountain(mt_Elbrus).
mountain(mt_Vinson).
mountain(puncak_Jaya).

location(everest, asia).
location(aconcagua, southAmerica).
location(mt_McKinley, northAmerica).
location(kilimanjaro, africa).
location(mt_Elbrus, europe).
location(mt_Vinson, antarctica).
location(puncak_Jaya, australia).

height(everest, 29029).
height(aconcagua, 22841).
height(mt_McKinley, 20312).
height(kilimanjaro, 19340).
height(mt_Elbrus, 18510).
height(mt_Vinson, 16050).
height(puncak_Jaya, 16023).

cert_climber(john).
cert_climber(kelly).
cert_climber(maria).
cert_climber(derek).
not(cert_climber(thyago)).

john_would_climb(X) :- cert_climber(john), location(X, northAmerica).
kelly_would_climb(X) :- cert_climber(kelly), height(X, Y), Y>=20000. 
maria_would_climb(X) :- cert_climber(maria), mountain(X).
derek_would_climb(X) :- cert_climber(derek), (location(X, europe); location(X, africa); location(X, australia)).
thyago_would_climb(X) :- cert_climber(thyago), height(X , Y), Y=0.
