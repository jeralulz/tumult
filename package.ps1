Get-Content ./src/DiscordAuthor.ps1 | Out-File tumult.psm1 		# we don't care if we clobber the file
Get-Content ./src/DiscordField.ps1 | Out-File -Append tumult.psm1
Get-Content ./src/DiscordFooter.ps1 | Out-File -Append tumult.psm1
Get-Content ./src/DiscordEmbed.ps1 | Out-File -Append tumult.psm1
Get-Content ./src/DiscordWebhook.ps1 | Out-File -Append tumult.psm1
Get-Content ./src/functions/*.ps1 | Out-File -Append tumult.psm1

@"

function New-TumultWebhook {
    param(
        [URI] `$webhook
    )
    [DiscordWebhook]::new(`$webhook)
}

function New-TumultAuthor {
    param(
        [Parameter(Mandatory=`$true)][string] `$name,
	[URI] `$url = `$null,
	[URI] `$icon_url = `$null
    )
    [DiscordAuthor]::new(`$name, `$url, `$icon_url)
}

function New-TumultEmbed {
    [DiscordEmbed]::new()
}

function New-TumultField {
    param(
        [Parameter(Mandatory=`$true)][string] `$name,
	[Parameter(Mandatory=`$true)][string] `$value,
	[bool] `$inline = `$false
    )

    [DiscordField]::new(`$name, `$value, `$field)
}

function New-TumultFooter {
    param(
        [string] `$text = `$null,
	[URI] `$icon_url = `$null
    )

    [DiscordFooter]::new(`$text, `$icon_url)
}

Export-ModuleMember -Function New-TumultWebhook,New-TumultAuthor,New-TumultEmbed,New-TumultField,New-TumultFooter
"@ | Out-File -Append tumult.psm1

