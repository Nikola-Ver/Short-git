@ECHO OFF

SET command="%~1%"

SET arguments=
SHIFT
:concat
IF "%~1%"=="" GOTO endConcat
SET arguments=%arguments%%1 
SHIFT
GOTO concat

:endConcat
IF %command% == "p" (
    git add *
    git commit -m "%~2%"
    git push
) ELSE IF %command% == "pl" (
    git pull %arguments%
) ELSE IF %command% == "l" (
    git log --pretty=format:"%%C(#00ffcd)%%h %%C(#7788aa)%%cd %%C(reset)| %%C(#0067ff)%%s%%d %%C(#00a685)[%%an]" --date=format:"%%F %%R"
) ELSE IF %command% == "rl" (
    git reflog %arguments%
) ELSE IF %command% == "s" (
    git status %arguments%
) ELSE IF %command% == "m" (
    git merge %arguments%
) ELSE IF %command% == "r" (
    git rebase %arguments%
) ELSE IF %command% == "st" (
    git stash %arguments%
) ELSE IF %command% == "t" (
    git tag %arguments%
) ELSE IF %command% == "cg" (
    git config %arguments%
) ELSE IF %command% == "c" (
    git commit -m %arguments%
) ELSE IF %command% == "f" (
    git fetch %arguments%
) ELSE IF %command% == "cl" (
    git clone %arguments%
) ELSE IF %command% == "rem" (
    git remote %arguments%
) ELSE IF %command% == "sw" (
    git show %arguments%
) ELSE IF %command% == "a" (
    git add %arguments%
) ELSE IF %command% == "ps" (
    git push %arguments%
) ELSE IF %command% == "ch" (
    git checkout %arguments%
) ELSE IF %command% == "cp" (
    git cherry-pick %arguments%
) ELSE IF %command% == "d" (
    git diff %arguments%
) ELSE IF %command% == "i" (
    git init %arguments%
) ELSE IF %command% == "v" (
    git --version %arguments%
)

@ECHO ON
