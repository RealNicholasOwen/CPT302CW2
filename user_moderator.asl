+user_score(UserScore, Sender) <-
.print("sending to profiling");
!python_profiling(UserScore, Sender).

+behavioral(Score, Sender) <-
.print("sending behavioral to agent3");
.send("grp27.3.cpt302@jabber.hot-chilli.net", tell, behavioral(Score, Sender)).

harmful(Sender, Body) <-
.print("harmful received").