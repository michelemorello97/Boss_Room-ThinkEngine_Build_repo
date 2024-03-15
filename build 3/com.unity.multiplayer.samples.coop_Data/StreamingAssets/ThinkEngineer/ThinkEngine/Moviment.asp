%OLD
%dest_x(X):- player_dest_x(_,_,X).
%dest_z(Z):- player_dest_z(_,_,Z).

%applyAction(0,"Move"):- dest_x(X), player_x(_,_,X), dest_z(Z), player_z(_,_,Z).
%actionArgument(0, "x", -300):- applyAction(0,"Move").
%actionArgument(0, "z", -2600):- applyAction(0,"Move").
%actionArgument(0, "id", I):- info_m_id(_,_,I), applyAction(0,"Move").
%actionArgument(0, "x_now", X):- player_x(_,_,X), applyAction(0,"Move").
%actionArgument(0, "z_now", Z):- player_z(_,_,Z), applyAction(0,"Move").


applyAction(0,"Move"):-info_current_action(_,_,0), #count{X: entity_tag(_, _, X, "Imp")}=0.
actionArgument(0, "x", -300):- applyAction(0,"Move").
actionArgument(0, "z", -2600):- applyAction(0,"Move").
actionArgument(0, "id", I):- info_m_id(_,_,I), applyAction(0,"Move").
actionArgument(0, "x_now", X):- player_x(_,_,X), applyAction(0,"Move").
actionArgument(0, "z_now", Z):- player_z(_,_,Z), applyAction(0,"Move").