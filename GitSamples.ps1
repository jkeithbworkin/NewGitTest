<# 
Keith's Github reminders
In the PS window, you can do the following:
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

git push --all --repo=https://github.com/jkeithbworkin/NewGitTest.git --dry-run