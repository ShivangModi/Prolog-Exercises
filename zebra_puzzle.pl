% Our zebra puzzle will be based on the following scenario:
%   - Three kids went to a superheroes fancy dress birthday party.
%   - The names of the three kids are Ethan, Ali and Anya.
%   - They dressed up as Spiderman, Captain America and Iron Man.
%   - The kids are 6, 8 and 10 years old.
kid(ethan).
kid(ali).
kid(anya).

hero(spiderman).
hero(captain_America).
hero(iron_man).

age(6).
age(8).
age(10).

% We don’t know how each kid dressed up or how old each kid is but we have the following clues:
%   - Anya was dressed up as Spiderman.
%   - Ethan was not dressed up as Captain America.
%   - The youngest kid dressed up as Spiderman.
%   - The kid who is 8 years old dressed up as Captain America.
relation(K,H,A):-   K=anya, H=spiderman, age(A).
relation(K,H,A):-   K=ethan, hero(H), age(A), H\=captain_america.
relation(K,H,A):-   kid(K), H=spiderman, A=six.
relation(K,H,A):-   kid(K), H=captain_america, A=eight.

different(X,Y,Z):-  X\=Y,X\=Z,Y\=Z.

solve(K1,K2,K3,H1,H2,H2,A1,A2,A3):- 
    relation(K1,H1,A1), relation(K2,H2,A2), relation(K3,H3,A3),
    different(K1,K2,K3), different(H1,H2,H3), different(A1,A2,A3).