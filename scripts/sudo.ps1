#!/usr/bin/env ps-exec

Param(
	[string]$command,
	[parameter(ValueFromRemainingArguments = $true)]
	[string[]]$arguments
)

if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
	Start-Process -FilePath $command -ArgumentList $arguments -Verb runAs
} else {
	Start-Process -FilePath $command -ArgumentList $arguments
}

