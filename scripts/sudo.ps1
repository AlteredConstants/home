#!/usr/bin/env ps-exec

$first, $rest = $args

if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
	$runAs = "-Verb runAs"
}
if ($rest) {
	$rest = "`"$rest`""
}
Invoke-Expression "Start-Process `"$first`" $rest $runAs"
