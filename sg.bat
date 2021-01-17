@ECHO OFF
IF "%~1%" == "p" (
    git add *
    git commit -m "%~2%"
    git push
) ELSE IF "%~1%" == "pl" (
    git pull "%~2%"

) ELSE IF "%~1%" == "l" (
    git log --pretty=format:"%%C(#00ffcd)%%h %%C(#7788aa)%%cd %%C(reset)| %%C(#0067ff)%%s%%d %%C(#00a685)[%%an]" --date=format:"%%F %%R"
) ELSE IF "%~1%" == "rl" (
    git reflog
) ELSE IF "%~1%" == "s" (
    git status
) ELSE IF "%~1%" == "m" (
    IF EXIST "%~3%" (
        git merge "%~2%" "%~3%"
    ) ELSE (
        git merge "%~2%"
    )
) ELSE IF "%~1%" == "r" (
    IF EXIST "%~3%" (
        git rebase "%~2%" "%~3%"
    ) ELSE (
        git rebase "%~2%"
    )
) ELSE IF "%~1%" == "st" (
    IF EXIST "%~3%" (
        git stash "%~2%" "%~3%"
    ) ELSE (
        git stash "%~2%"
    ) 
) ELSE IF "%~1%" == "t" (
    IF EXIST "%~3%" (
        git tag "%~2%" "%~3%"
    ) ELSE (
        git tag "%~2%"
    ) 
) ELSE IF "%~1%" == "cg" (
    git config
) ELSE IF "%~1%" == "c" (
    IF EXIST "%~3%" (
        git commit "%~2%" "%~3%"
    ) ELSE (
        git commit "%~2%"
    )
) ELSE IF "%~1%" == "f" (
    IF EXIST "%~3%" (
        git fetch "%~2%" "%~3%"
    ) ELSE (
        git fetch "%~2%"
    )
) ELSE IF "%~1%" == "cl" (
    git clone "%~2%"
) ELSE IF "%~1%" == "rem" (
    IF EXIST "%~4%" (
        git remote "%~2%" "%~3%" "%~4%"
    ) ELSE IF EXIST "%~3%" (
        git remote "%~2%" "%~3%"
    ) ELSE (
        git remote "%~2%"
    )
) ELSE IF "%~1%" == "sw" (
    git show "%~2%"

) ELSE IF "%~1%" == "a" (
    IF EXIST "%~3%" (
        git add "%~2%" "%~3%"
    ) ELSE (
        git add "%~2%"
    )
) ELSE IF "%~1%" == "ps" (
    IF EXIST "%~4%" (
        git push "%~2%" "%~3%" "%~4%"
    ) ELSE IF EXIST "%~3%" (
        git push "%~2%" "%~3%"
    ) ELSE (
        git push "%~2%"
    )
) ELSE IF "%~1%" == "ch" (
    git checkout "%~2%"
) ELSE IF "%~1%" == "cp" (
    git cherry-pick "%~2%"
) ELSE IF "%~1%" == "d" (
    git diff "%~2%"
) ELSE IF "%~1%" == "i" (
    git init
)
@ECHO ON
