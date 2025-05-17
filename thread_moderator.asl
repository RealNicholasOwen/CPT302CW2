+message(Message, User) <-
!analyze_content(Message, User)

+!analyze_content(Message, User) <-
!python_analyze(Message, User)


