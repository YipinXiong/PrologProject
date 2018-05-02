replace(E1, [E1|Tail], E2, [E2|Tail]).
replace(E1,[X|Xs],E2,[X|Ys]) :-
    replace(E1,Xs,E2,Ys).

    

zip([],[],[]).
zip([A|As],[B|Bs],[AB|ABs]) :-
    AB = A-B,
    zip(As,Bs,ABs).

sublist([],_).
sublist([X|Xs],Ys) :-
    append(_,[X|Newys],Ys),
    sublist(Xs,Newys).

