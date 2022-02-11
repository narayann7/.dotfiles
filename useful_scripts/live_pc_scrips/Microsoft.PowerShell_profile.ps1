
Clear-Host
python C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful_scripts\live_pc_scrips\welcome.py

set-alias -name c -value clear
set-alias -name ec -value echo
set-alias -name l -value ls

Function e { exit }
Function cpop { 
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $command,
        [string[]]
        $path
    )

    $execute_it = "$command | Out-File -FilePath $path"
   
    Invoke-Expression $execute_it 

}

Function ep { sub $Profile }
Function touch {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $file_name
    ) New-Item $file_name
}
Function epc { code $Profile }
Function hm { Set-Location ~ }
Function down { Set-Location "~/Downloads" }
Function doc { Set-Location "~/Documents" }
Function dump { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos\dump" }
Function test { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos\dump\testing" }
Function gb { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos" }
Function sub {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $message
    )
    C:\"Program Files"\"Sublime Text"\sublime_text.exe $message
}
Function gac {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $message
    )
    git add .
    git commit -m "$message"
}
Function gch {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $message
    )
    git add .
    git commit -m "$message"
    git push origin -u main
}
