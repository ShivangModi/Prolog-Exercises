% 1. Write a program that can print all elements a list
% ?- print_list([a,b,c]).
% a b c
print_list([]).
print_list([Head|Tail]):-   write(Head), write(' '), print_list(Tail).

% 2. Write a program that creates a list with first and last elements given
% ?- create_list(5,12,S).
% S=[5,6,7,8,9,10,11,12]
create_list(High, High, [High]):-   !.
create_list(Low, High, [Low | Tail]):-   create_list(Low+1, High, Tail).

% 3. Write a program that calculates the mean value of a list of numbers.
len([], 0).
len([_ | T], N):-   len(T, N1), N is N1 + 1.

sum([], 0).
sum([H | T], Total):-   sum(T, N), Total is H + N.

mean(L, Res):-  len(L, N), sum(L, Total), Res is Total/N.

% 4. Write a program that detects if a list contains a number, and returns the number (or numbers) in an argument.
detects_number([], []).
detects_number([H | T], [H | Tail]):-   number(H), detects_number(T, Tail), !.
detects_number([_ | T], Res):-  \+number(H), detects_number(T, Res).

% 5. Write a program that increments each integer element found in a list.
% example:
% ?- increment_elements([5,6,a,8,b],S).
% S=[6,7,a,9,b]
increment_elements([], []).
increment_elements([H | T], [N | Tail]):-   number(H), N is H+1, increment_elements(T, Tail), !.
increment_elements([H | T], [H | Tail]):-   \+number(H), increment_elements(T, Tail).

% 6. Write a program that can encapsulate each element of a list as a list.
% example:
% ?- encaps([a,b,1,d,e],S).
% S = [[a],[b],[1],[d],[e]]
encaps([], []).
encaps([H | T], [[H] | Tail]):- encaps(T, Tail).

% 7. Write a program that insert zeros between elements of a list.
% example:
% ?- insert_zeros([1,2,3,4,5],S).
% S = [1,0,2,0,3,0,4,0,5,0]
insert_zeros([], []).
insert_zeros([H | T], [H, 0 | Tail]):-  insert_zeros(T, Tail).

% 8. Write a program that can clone a list:
% ?- clone([g,6,7],S).
% S = [[g,6,7][g,6,7]]
clone(L, [L, L]).

% 9. Write a program that, given a list of elements, modify its Nth element with a given element.
% example:
% ?- modify([m,o,d,i,f,y,e,t],6,i,Y).
% Y = [m,o,d,i,f,y,i,t]
modify([], _, _, []).
modify([_ | T], 0, X, [X | T]):-	!.
modify([H | T], N, X, [H | Tail]):- N1 is N-1, modify(T, N1, X, Tail).


% 10. Write a program that generates random integers between I and J, for a square matrix with N rows.
% example:
% random_matrix(I,J,N,Mat).
% ?- random_matrix(0,9,3,M).
% M = [[2,4,5],[1,0,3],[9,3,2]]


% 11. Consider a representation of sets as lists. Define the following predicates:
% (a) subset(L,K), which holds if L is a subset of K.
% (b) disjoint(L,K), which holds if L and K are disjoint (i.e. they have no elements in common).
% (c) union(L,K,M), which holds if M is the union of L and K.
% (d) intersection(L,K,M), which holds if M is the intersection of L and K.
% (e) difference(L,K,M), which holds if M is the difference of L and K.
% Consider two different implementations: 
% (1) the input list can have repeated elements, 
% (2) the input list does not have repeated elements (it is, in fact, a set).


% 12. Define a predicate length(L,N) which holds if N is the length of the list L.
length([], 0).
length([_ | T], N):-    length(T, N1), N is N1 + 1.

% 13. Define a predicate sumlist(L,N) which, given a list of integers L, returns the sum N of all the elements of L. 
% (the input list must contain only numbers.)
sumlist([], 0).
sumlist([H | T], Total):-   sumlist(T, N), Total is H + N.

% 14. Define a predicate add_up_list(L,K) which, given a list of integers L, returns a list of integers in which each 
% element is the sum of all the elements in L up to the same position.
% example:
% ?- add_up_list([1,2,3,4],K).
% K = [1,3,6,10];
% no
% add_up_list([], 0).
% add_up_list([H | T], Total):-   add_up_list(T, N), Total is H + N.

% 15. Define a predicate merge(L,K,M) which, given two ordered lists of integers L and K, returns an ordered list M containing 
% all the elements of L and K.


% 16. Consider a representation of binary trees as terms, as follows:
% emptybt:- the empty binary tree
% consbt(N,T1,T2):- the binary tree with root N and left and right subtrees T1 and T2
% (a) Define a predicate preorder(T,L) which holds if L is the list of nodes produced by the preorder traversal of the binary tree T.
% (b) Define a predicate search_tree(L,T) which, given a list of integers L, returns a balanced search-tree T containing the elements of L.
