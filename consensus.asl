+behavioral(Score, Sender) : harmful(Msg_id, Text, Score, Sender) <-
!calculate_consensus(MsgId, Text, TextScore, User, UserScore).

+harmful(Msg_id, Text, Score, Sender) : behavioral(Score, Sender)<-
!calculate_consensus(MsgId, Text, TextScore, User, UserScore).

+!calculate_consensus(MsgId, Text, TextScore, User, UserScore) <-
!python_consensus(MsgId, TextScore, UserScore).


+final_decision(MsgId, Action, Consensus): Action == "keep" <-
.print("Keeping message ", MsgId, " (consensus: ", Consensus, ")").

+final_decision(MsgId, Action, Consensus): Action == "remove"<-
.print("Removing message ", MsgId, " (consensus: ", Consensus, ")");
!remove_message(MsgId).

+final_decision(MsgId, "ban", Consensus): Action == "ban" <-
.print("Banning user associated with ", MsgId, " (consensus: ", Consensus, ")");
!ban_user(MsgId).

+!remove_message(MsgId) <-
.print("Executing removal of message: ", MsgId).



+!ban_user(MsgId) <-
.print("Executing ban for user: ").







//maybe can consider
+harmful(MsgId, _, Score)[source(self)] : Score < -0.8 <-
!immediate_action(MsgId).

//+!ban_user(MsgId) <-
//?harmful(MsgId, Text, _);  // Fetch text from harmful belief
//?behavioral(MsgId, User, _);