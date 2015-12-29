<# 
Keith's Github reminders
In the PS window, you can do the following:
#>

<# Key concepts
git <command> will give the current status of an item.
examples: 
  git branch shows current branches & the current active branch
  git remote shows the name of the current remote 


#>

# this creates a local copy of the URL you were working with
cd C:\GitHub
git clone <url> 

<# 
Git Status shows the current state of the environment
try modifying any file in the folder, saving it, and then running git status
you can also copy a file into the folder, & see what the results are
#>
git status

# Git Add will add a new file or add changes to an exising file, but not commit it. 
# try git add 
git add .\GitSamples.ps1
git status

# git commit is required to finish the task
git commit .\GitSamples.ps1 -m "Testing the git add feature."

<# 
At this point, the changes are ready, but only local to this system. 
To get them posted to the git repo this local repo came from, use the command below
#>

<#
this command didnt work
git push --all --repo=https://github.com/jkeithbworkin/NewGitTest.git --dry-run
FIGURED OUT WHY THIS WON'T WORK! 
It doesn't work inside the ISE.
Switch to PS shell & it will prompt. 
From the ISE, have to to use the GUI to get the login & pw
#>
git-gui.exe

<# 
Quick way to Add all the modified files
#>
git status
pause
git add -A
# note that you can do the same thing with "git add . "
git commit -a -m "Adding the push dry run info, and the current note that I have to use the GUI to get the pw prompt"

# still using gitgui to push
git-gui.exe
<#
noted the demo uses "esc:wq". This gets someone out of the git prompt status.
It may be that Shift +zz (aka: ZZ) is required

Git log tells what changes were made by whom
#>
git log
# for a brief version, try
git log --oneline

# Git diff will show what has changed. Modifications will be at the bottom
git diff


<# CLONING
Within a folder where you want to put a repo, use git clone <url> to
. Create a local folder named for the online repo
. Copy all the files from the online repo to that folder
. Set the branch locally to be the branch of the original
#>
cd C:\GitHub
git clone https://github.com/PowerShell/PowerShell-Docs

<# BRANCHING
A branch is basically a tag that exists locally, until you push it
You create the branch from inside the folder that is the local repo copy
git branch with no name lists branches
git branch <name> creates a branch of that name
git checkout <branch name> makes that branch the active branch
#>
cd .\PowerShell-Docs
Git branch 
Git branch local_1
Git checkout 
