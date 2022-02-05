
clear
python C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful_scripts\live_pc_scrips\welcome.py

set-alias -name c -value clear

Function home{cd ~}
Function down{cd "~/Downloads"}
Function test{cd "C:\Users\narayann7\Documents\love\GitHubRepos\dump\testing"}
Function gb{cd "C:\Users\narayann7\Documents\love\GitHubRepos"}

Function ac{
       Param(
    [Parameter(Mandatory=$true,
    ValueFromPipeline=$true)]
    [string[]]
    $message
)
    git add .
    git commit -m "$message"
}