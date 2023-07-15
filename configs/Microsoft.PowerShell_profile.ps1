Clear-Host
#welcome script
#python #C:\Users\narayann7\Documents\GitHubRepos\scripts-n-files\useful-scripts\daily-use-scripts\welcome.py



#theme shell 
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt darkblood

#alias
set-alias -name c -value clear
set-alias -name ec -value echo
set-alias -name dk -value docker
set-alias -name l -value ls
set-alias -name pp -value python
set-alias -name run -value  Invoke-Expression

#function alias
Function e { exit }
Function pg { flutter pub get }



#dir paths
Function ghr { Set-Location C:\Users\narayann7\Documents\GitHub }
Function hm { Set-Location ~ }
Function down { Set-Location "~/Downloads" }
Function doc { Set-Location "~/Documents" }
Function test { Set-Location "C:\Users\narayann7\testing" }
Function dump { Set-Location "C:\Users\narayann7\testing\dump" }
Function scripts { Set-Location "C:\Users\narayann7\Documents\GitHubRepos\scripts-n-files" }

#to create temp folder 
Function tdump { 
   Param(
      [Parameter(Mandatory = $true,
         ValueFromPipeline = $true)]
      [string[]]
      $folder_name
   ) 
   Set-Location "C:\Users\narayann7\testing\dump"

   mkdir $folder_name
   Set-Location "C:\Users\narayann7\testing\dump\$folder_name"
}


#file paths
Function epvc { code $Profile }
Function ep { sub $Profile }
Function his { sub C:\Users\narayann7\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt }



#genral alias
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
   $command = "explorer $file_name"
   Invoke-Expression $command
}

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
   }
   else {
      C:\"Program Files"\"Sublime Text"\sublime_text.exe $message
   }

}

#set of git commands
Function ghinit {
   Param(
      [Parameter(Mandatory = $true,
         ValueFromPipeline = $true)]
      [string[]]
      $repo_name,
      [Parameter(Mandatory = $false,
         ValueFromPipeline = $true)]
      [string[]]
      $type

   )

   if ($type) { gh repo create   $repo_name --private }
   else { gh repo create   $repo_name --public }

   git init
   git add .
   git commit -m "initial commit"
   git branch -M main
   git remote add origin https://github.com/narayann7/$repo_name.git
   git push -u origin main

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

#search file in current dir
function ffile($name) {
   Get-ChildItem -recurse -filter "*${name}*" -ErrorAction SilentlyContinue | ForEach-Object {
      $place_path = $_.directory
      Write-Output "${place_path}\${_}"
   }
}
function unzip ($file) {
   Write-Output("Extracting", $file, "to", $pwd)
   $fullFile = Get-ChildItem -Path $pwd -Filter .\cove.zip | ForEach-Object { $_.FullName }
   Expand-Archive -Path $fullFile -DestinationPath $pwd
}

Function op {
   Param(
      [Parameter(Mandatory = $true,
         ValueFromPipeline = $true)]
      [string[]]
      $message
   )
   g++ $message
   .\a.exe
}
Function gcp {
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
   $command = "python C:\Users\narayann7\Documents\GitHubRepos\scripts-n-files\useful-scripts\daily-use-scripts\pushAllGitHubRepo.py 0"
   Invoke-Expression $command
}
Function pushallm {
   $command = "python C:\Users\narayann7\Documents\GitHubRepos\scripts-n-files\useful-scripts\daily-use-scripts\pushAllGitHubRepo.py 1"
   Invoke-Expression $command
}
function pkill($name) {
   Get-Process $name -ErrorAction SilentlyContinue | Stop-Process
}
Function gethis {
   $path = (Get-PSReadlineOption).HistorySavePath
   Get-Content $path
}
Function hispath {
   $path = (Get-PSReadlineOption).HistorySavePath
   Write-Output $path
}
Function tr {

   $path1 = "code C:\Users\narayann7\Documents\'node projects'\TrendRooms-client-"
   $path2 = "code C:\Users\narayann7\Documents\'node projects'\TrendRooms-server-"
   Invoke-Expression $path1
   Invoke-Expression $path2
}

Function vs {
   $path = "code $pwd"
   Invoke-Expression $path
}Function getenv {
   Get-ChildItem Env: | Format-Table -Wrap -AutoSize
}

Function op7 {
   Param(
      [Parameter(Mandatory = $true,
         ValueFromPipeline = $true)]
      [string[]]
      $port
   )
   $path = "python C:\Users\narayann7\Documents\GitHubRepos\scripts-n-files\useful-scripts\daily-use-scripts\adb_connect_wireless.py $port"
   Invoke-Expression $path
}

function sudo {
   Start-Process @args -verb runas
}

function envop {
   sysdm.cpl
}

Function whereis {
   Param(
      [Parameter(Mandatory = $true,
         ValueFromPipeline = $true)]
      [string[]]
      $command
   )
(Get-Command $command).Path
}

Function idraw {
   Param(
      [Parameter(Mandatory = $true,
         ValueFromPipeline = $true)]
      [string[]]
      $name
   )
   $filename = "$name.drawio"
   New-Item $filename
}

Function edraw {
   Param(
      [Parameter(Mandatory = $true,
         ValueFromPipeline = $true)]
      [string[]]
      $name
   )
   $filename = "$name.excalidraw"
   New-Item $filename
}


#powershell configs
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History
