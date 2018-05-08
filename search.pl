
%% find a simple Path from Start to End
find(Start, End, Path) :-
	find(Start, End, [Start], Path).
%% find(Start, End, Previous, Path).
%% find a simple Path from Start to End
%% having visited Previous already
find(Start, Start, _Previous, []).
find(Start, End, Previous, [Dirn|Path]) :-
    edge(Start, Dirn, Med),
    \+ member(Med, Previous), % dont visit previous places
    find(Med, End, [Med|Previous], Path).

%% map represented as facts
%% a - b - c
%%     |   |
%%     d - e - f
%%     |   |   |
%%     g   h - i 
edge(a,  east, b).
edge(b,  west, a).
edge(b, south, d).
edge(b,  east, c).
edge(c,  west, b).
edge(c, south, e).
edge(d, north, b).
edge(d,  east, e).
edge(d, south, g).
edge(e,  west, d).
edge(e, north, c).
edge(e,  east, f).
edge(e, south, h).
edge(f,  west, e).
edge(f, south, i).
edge(g, north, d).
edge(h, north, e).
edge(h,  east, i).
edge(i,  west, h).
edge(i, north, f).
