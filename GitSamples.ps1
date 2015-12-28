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

# Git Add will add a new file, but not commit it. 
# try git add 
git add .\GitSamples.ps1
git status

# git commit is required to finish the task

