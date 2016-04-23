#!/usr/bin/env ps-exec

$command, $args = $args

if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
	$runAs = "-Verb runAs"
}
$argList = ""
if ($args) {
	$firstArg, $restArgs = $args
	$argList = "`"$firstArg`""
	foreach ($arg in $restArgs) {
		$argList = "$argList,`"$arg`""
	}
	$argList = "-ArgumentList ($argList)"
}
Invoke-Expression "Start-Process -FilePath `"$command`" $argList $runAs"
