+harmful(MsdId, Text, Score, Sender) <-
!check_profile(MsgId, Sender)

+!check_profile(MsgId, Sender) <-
!python_profiling(MsgId, Sender)