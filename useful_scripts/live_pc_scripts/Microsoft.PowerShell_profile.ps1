
Clear-Host
python C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful_scripts\live_pc_scripts\welcome.py

set-alias -name c -value clear
set-alias -name ec -value echo
set-alias -name l -value ls
set-alias -name pp -value python

Function e { exit }
Function pg { flutter pub get }

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

Function file {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $file_name
    ) 
   $command="explorer $file_name"
   Invoke-Expression $command
}




Function epvc { code $Profile }
Function hm { Set-Location ~ }
Function down { Set-Location "~/Downloads" }
Function doc { Set-Location "~/Documents" }
Function dump { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos\dump" }
Function scripts { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files" }
Function test { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos\dump\testing" }
Function gb { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos" }
Function sub {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $message
    )
    if ($message -eq "1") {
        C:\"Program Files"\"Sublime Text"\sublime_text.exe
    }
    elseif ($message -eq ".") {
        C:\"Program Files"\"Sublime Text"\sublime_text.exe $pwd
    } else {
        C:\"Program Files"\"Sublime Text"\sublime_text.exe $message
    }

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

Function pushall {
    $command = "python C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful_scripts\live_pc_scripts\pushAllGitHubRepo.py 0"
    Invoke-Expression $command
}
Function pushallm {
    $command = "python C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful_scripts\live_pc_scripts\pushAllGitHubRepo.py 1"
    Invoke-Expression $command
}

Function gethis {
    $path = (Get-PSReadlineOption).HistorySavePath
    Get-Content $path
}
Function hispath {
    $path = (Get-PSReadlineOption).HistorySavePath
    Write-Output $path
}

Function vs {
    $path = "code $pwd"
    Invoke-Expression $path
}

Function op7 {
    $path = "python C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful_scripts\live_pc_scripts\adb_connect_wireless.py"
    Invoke-Expression $path
}