:-module(main,[go/0]).
go:-current_prolog_flag(argv,_G350),write(_G350),nl,'0'(_G350).
'1'(_G757,_G758,_G759):-open(_G757,read,_G763),get_char(_G763,_G766),'2'(_G763,_G766,_G770),close(_G763),'3'(_G770,_G758,_G759).
'0'(_G1171):-use_module(wumpus), (append(_G1184,[_G1175,_G1178,_G1181],_G1171)->open(_G1175,read,_G1190),get_char(_G1190,_G1193),'2'(_G1190,_G1193,_G1197),close(_G1190),atom_number(_G1178,_G1202),atom_number(_G1181,_G1205),'3'(_G1197,_G1202,_G1205),halt;write('wumpusrun takes 3 arguments: filename XS YS\n')),halt.
'2'(_G2258,_G2259,_G2260):-_G2259=end_of_file->_G2260=[];_G2260=[_G2271|_G2272],'4'(_G2258,_G2259,_G2279,_G2271),'2'(_G2258,_G2279,_G2272).
'4'(_G2668,_G2669,_G2670,_G2671):-_G2669='\n'->_G2671=[],get_char(_G2668,_G2670);_G2669=end_of_file->_G2671=[],_G2670=_G2669;'5'(_G2703,_G2669),_G2671=[_G2703|_G2707],get_char(_G2668,_G2713),'4'(_G2668,_G2713,_G2670,_G2707).
'3'(_G3588,_G3589,_G3590):-'6'(_G3588,_G3589,_G3590,_G3595), ((_G3595=pit;_G3595=wall;_G3595=wumpus)->write('Invalid starting position '),write((_G3589,_G3590)),nl,halt;true),length(_G3588,_G3635),_G3588=[_G3637|_G3638],length(_G3637,_G3644), ('7'(_G3588,_G3644),'8'(_G3588,_G3650)->true;write('Invalid map'),nl,halt),once(initialState(_G3635,_G3644,_G3589,_G3590,_G3673)),'3'(_G3588,_G3650,_G3589,_G3590,_G3635,_G3644,_G3673,0,0).
'3'(_G5373,_G5374,_G5375,_G5376,_G5377,_G5378,_G5379,_G5380,_G5381):-'9'(_G5379,_G5384,_G5385,_G5386),_G5391 is _G5380+1,_G5397 is _G5381+_G5386,'0'(_G5385,_G5375,_G5376,north,_G5373,_G5374,_G5406,_G5407), (_G5407=yes->'10'(_G5373,_G5375,_G5376,_G5385,_G5406,_G5391,_G5397);once(updateState(_G5384,_G5385,_G5406,_G5426)),'3'(_G5373,_G5374,_G5375,_G5376,_G5377,_G5378,_G5426,_G5391,_G5397)).
'9'(_G6075,_G6076,_G6077,_G6078):-once(guess(_G6075,_G6076,_G6077)),'11'(_G6077,_G6078), (_G6078=<100,'12'(_G6077)->true;write('INVALID GUESS: '),write(_G6077),nl,write('ENERGY = '),write(_G6078),nl,halt).
'12'([]).
'12'([east|_G7160]):-'12'(_G7160).
'12'([north|_G7201]):-'12'(_G7201).
'12'([west|_G7242]):-'12'(_G7242).
'12'([south|_G7283]):-'12'(_G7283).
'12'([shoot|_G7324]):-'12'(_G7324).
'7'([],_G7365).
'7'([_G7385|_G7386],_G7389):-length(_G7385,_G7389),'7'(_G7386,_G7389).
'10'(_G3319,_G3320,_G3321,_G3322,_G3323,_G3324,_G3325):-'13'(_G3319),nl,write('Starting at ('),write(_G3320),write(','),write(_G3321),write(')'),nl,write('Successfully killed wumpus with plan: '),write(_G3322),nl,write('Feedback: '),write(_G3323),nl,write('ATTEMPTS = '),write(_G3324),nl,write('ENERGY = '),write(_G3325),nl.
'11'(_G5222,_G5223):-'11'(_G5222,0,_G5223).
'11'([],_G5276,_G5276).
'11'([_G5301|_G5302],_G5305,_G5306):- (_G5301=shoot->_G5311=5;_G5311=1),_G5326 is _G5305+_G5311,'11'(_G5302,_G5326,_G5306).
'0'([],_G5774,_G5775,_G5776,_G5777,_G5778,[],no).
'0'([_G5824|_G5825],_G5831,_G5832,_G5833,_G5834,_G5835,[_G5827|_G5828],_G5837):-'14'(_G5824,_G5831,_G5832,_G5833,_G5834,_G5835,_G5845,_G5846,_G5847,_G5827), ((_G5827=pit;_G5827=wumpus)->_G5828=[],_G5837=no;_G5827=hit->_G5828=[],_G5837=yes;'0'(_G5825,_G5845,_G5846,_G5847,_G5834,_G5835,_G5828,_G5837)).
'14'(shoot,_G6726,_G6727,_G6728,_G6729,_G6730,_G6726,_G6727,_G6728,_G6734):-!,'15'(_G6729,_G6726,_G6727,_G6728,_G6734).
'14'(_G6927,_G6928,_G6929,_G6930,_G6931,_G6932,_G6933,_G6934,_G6927,_G6936):-'16'(_G6927,_G6928,_G6929,_G6941,_G6942),'6'(_G6931,_G6941,_G6942,_G6947),'6'(_G6932,_G6941,_G6942,_G6936), (_G6947=wall->_G6933=_G6928,_G6934=_G6929;_G6933=_G6941,_G6934=_G6942).
'16'(north,_G5192,_G5193,_G5194,_G5195):-_G5194=_G5192,_G5195 is _G5193-1.
'16'(south,_G5432,_G5433,_G5434,_G5435):-_G5434=_G5432,_G5435 is _G5433+1.
'16'(east,_G5675,_G5676,_G5677,_G5678):-_G5677 is _G5675+1,_G5678=_G5676.
'16'(west,_G5918,_G5919,_G5920,_G5921):-_G5920 is _G5918-1,_G5921=_G5919.
'6'(_G6160,_G6161,_G6162,_G6163):-'17'(_G6160,_G6162,_G6167),'17'(_G6167,_G6161,_G6163),!.
'6'(_G6354,_G6355,_G6356,wall).
'17'(_G6385,_G6386,_G6387):-'17'(_G6385,_G6386,1,_G6387).
'17'([_G6448|_G6449],_G6452,_G6453,_G6454):-_G6452>=_G6453, (_G6452=_G6453->_G6454=_G6448;_G6471 is _G6453+1,'17'(_G6449,_G6452,_G6471,_G6454)).
'15'(_G6930,_G6931,_G6932,_G6933,_G6934):-'6'(_G6930,_G6931,_G6932,_G6939), (_G6939=wumpus->_G6934=hit;_G6939=wall->_G6934=miss;'16'(_G6933,_G6931,_G6932,_G6962,_G6963),'15'(_G6930,_G6962,_G6963,_G6933,_G6934)).
'18'([]).
'18'([wall|_G7518]):-'18'(_G7518).
'8'([_G7558|_G7559],_G7562):-'19'([_G7558|_G7559],_G7568,_G7569),length(_G7558,_G7572),_G7577 is _G7572+2,length(_G7580,_G7577),'18'(_G7580),'20'([_G7558|_G7559],_G7589),append([_G7580|_G7589],[_G7580],_G7599),'21'(_G7599,1,_G7568,_G7569,_G7562).
'19'(_G8150,_G8151,_G8152):-'19'(_G8150,1,_G8151,_G8152).
'19'([_G8213|_G8214],_G8217,_G8218,_G8219):-member(wumpus,_G8213)->_G8218=_G8217,'22'(_G8213,1,_G8219);_G8240 is _G8217+1,'19'(_G8214,_G8240,_G8218,_G8219).
'22'([_G8631|_G8632],_G8635,_G8636):-_G8631=wumpus->_G8636=_G8635;_G8650 is _G8635+1,'22'(_G8632,_G8650,_G8636).
'20'([],[]).
'20'([_G9022|_G9023],[_G9025|_G9026]):-append([wall|_G9022],[wall],_G9025),'20'(_G9023,_G9026).
'21'([_G9188,_G9191],_G9195,_G9196,_G9197,[]).
'21'([_G9230,_G9233,_G9236|_G9237],_G9243,_G9244,_G9245,[_G9239|_G9240]):-'23'(_G9230,_G9233,_G9236,_G9243,1,_G9244,_G9245,_G9239),_G9260 is _G9243+1,'21'([_G9233,_G9236|_G9237],_G9260,_G9244,_G9245,_G9240).
'23'([_G9494,_G9497],[_G9500,_G9503],[_G9506,_G9509],_G9515,_G9516,_G9517,_G9518,[]).
'23'([_G9563,_G9566,_G9569|_G9570],[_G9572,_G9575,_G9578|_G9579],[_G9581,_G9584,_G9587|_G9588],_G9596,_G9597,_G9598,_G9599,[_G9590|_G9591]):- (_G9575=pit->_G9590=pit;_G9575=wall->_G9590=wall;_G9575=wumpus->_G9590=wumpus;abs(_G9596-_G9598)+abs(_G9597-_G9599)=:=1->_G9590=stench;abs(_G9596-_G9598)+abs(_G9597-_G9599)=<3->_G9590=smell; (_G9566=pit;_G9572=pit;_G9578=pit;_G9584=pit)->_G9590=damp;_G9590=empty),_G9724 is _G9597+1,'23'([_G9566,_G9569|_G9570],[_G9575,_G9578|_G9579],[_G9584,_G9587|_G9588],_G9596,_G9724,_G9598,_G9599,_G9591).
'13'([]).
'13'([_G11498|_G11499]):-'24'(_G11498),nl,'13'(_G11499).
'24'([]).
'24'([_G11676|_G11677]):-'5'(_G11676,_G11682),write(_G11682),'24'(_G11677).
'5'(unknown,' ').
'5'(empty,'.').
'5'(wall,#).
'5'(pit,'P').
'5'(wumpus,'W').
'5'(damp,d).
'5'(smell,?).
'5'(stench,!).
'25'([[empty,wall,empty,empty,empty,empty,empty,empty],[empty,wall,empty,empty,empty,empty,empty,empty],[empty,empty,pit,wall,empty,wumpus,empty,pit],[empty,empty,empty,pit,wall,empty,empty,empty],[empty,wall,empty,empty,empty,empty,empty,empty],[empty,wall,empty,empty,empty,empty,empty,empty],[empty,wall,empty,empty,empty,empty,empty,empty]]).