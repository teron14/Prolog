directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(fahlquemont,stAvold).
directTrain(stAvold,forbach).
directTrain(saarbruecken,dudweiler).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travelBetween(X,Y):- directTrain(X,Y).
travelBetween(X,Y):- directTrain(Y,X).
travelBetween(X,Z):- travelBetween(X,Y),
	travelBetween(Y,Z).
travelBetween(X,Z):- travelBetween(Z,Y),
	travelBetween(Y,X).
