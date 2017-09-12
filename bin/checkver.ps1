###
### See https://github.com/lukesampson/scoop/issues/97
### See https://github.com/lukesampson/scoop-extras/blob/master/bin/checkver.ps1
###
### If you are asked to change the execution policy when trying to
### execute this script, use: Set-ExecutionPolicy RemoteSigned -scope CurrentUser
###
if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = resolve-path (split-path (split-path (scoop which scoop))) }
$checkver = "$env:SCOOP_HOME/bin/checkver.ps1"
$dir = "$psscriptroot/.." # checks the parent dir
iex -command "$checkver -dir $dir $($args |% { "$_ " })"
