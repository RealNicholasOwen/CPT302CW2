+behavioral(MsgId, User, UserScore) : harmful(MsgId, Text, TextScore) <-
!calculate_consensus(MsgId, Text, TextScore, User, UserScore)

+harmful(MsgId, Text, TextScore) : behavioral(MsgId, User, UserScore)<-
!calculate_consensus(MsgId, Text, TextScore, User, UserScore)

+!calculate_consensus(MsgId, Text, TextScore, User, UserScore) <-
!python_consensus(MsgId, TextScore, UserScore)


+final_decision(MsgId, "Keep", Consensus) <-
.print("Keeping message ", MsgId, " (consensus: ", Consensus, ")").

+final_decision(MsgId, "remove", Consensus) <-
.print("Removing message ", MsgId, " (consensus: ", Consensus, ")");
!remove_message(MsgId).

+final_decision(MsgId, "ban", Consensus)[source(self)] <-
.print("Banning user associated with ", MsgId, " (consensus: ", Consensus, ")");
!ban_user(MsgId,).

+!remove_message(MsgId) <-
.print("Executing removal of message: ", MsgId);



+!ban_user(MsgId) <-
.print("Executing ban for user: ");







//maybe can consider
+harmful(MsgId, _, Score)[source(self)] : Score < -0.8 <-
   !immediate_action(MsgId).

+!ban_user(MsgId) <-
   ?harmful(MsgId, Text, _);  // Fetch text from harmful belief
   ?behavioral(MsgId, User, _);