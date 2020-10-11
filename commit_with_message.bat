ECHO Adding all files
git add --all
:re_enter_commit
SET /P _commitmessage= Please state commit message:
:end
ECHO Commit message is: "%_commitmessage%"
SET /P _correct= Do you want to commit? (y/n) 
IF "%_correct%"=="y" (GOTO :commit_to_git) ELSE (GOTO :re_enter_commit)
:commit_to_git
git commit -u -m"%_commitmessage%"
:end
git push
pause