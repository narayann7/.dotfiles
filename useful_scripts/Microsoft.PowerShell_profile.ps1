
Clear-Host
python C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful_scripts\live_pc_scrips\welcome.py

set-alias -name c -value clear
set-alias -name ec -value echo

Function e{ exit}
Function ep{code $Profile}
Function home{Set-Location ~}
Function down{Set-Location "~/Downloads"}
Function doc{Set-Location "~/Documents"}
Function dump{Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos\dump"}
Function test{Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos\dump\testing"}
Function gb{Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos"}
Function sub{
    # "C:\Program Files\Sublime Text\sublime_text.exe"
    call "C:\Program Files\Sublime Text\sublime_text.exe"
}
Function gac{
       Param(
    [Parameter(Mandatory=$true,
    ValueFromPipeline=$true)]
    [string[]]
    $message
)
    git add .
    git commit -m "$message"
}
Function gch{
       Param(
    [Parameter(Mandatory=$true,
    ValueFromPipeline=$true)]
    [string[]]
    $message
)
    git add .
    git commit -m "$message"
    git push origin -u main
}
