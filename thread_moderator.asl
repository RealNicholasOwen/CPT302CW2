+tweet(Sender, Body) <- 
.print("tweet received", Sender, Body);
!textScore(Body, User).


+harmful(Msg_id, Text, Score, Sender) <-
.print("python harmful received");
.send("grp27.3.cpt302@jabber.hot-chilli.net", tell, harmful(Msg_id, Text, Score, Sender)).

+user_score(UserScore, Sender) <-
.print("sending user score");
.send("grp27.2.cpt302@jabber.hot-chilli.net", tell, user_score(UserScore, Sender)).

