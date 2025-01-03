function New-TumultWebhook {
    param(
        [URI] $webhook
    )
    [DiscordWebhook]::new($webhook)
}

function New-TumultAuthor {
    param(
        [Parameter(Mandatory=$true)][string] $name,
	[URI] $url = $null,
	[URI] $icon_url = $null
    )
    [DiscordAuthor]::new($name, $url, $icon_url)
}

function New-TumultEmbed {
    [DiscordEmbed]::new()
}

function New-TumultField {
    param(
        [Parameter(Mandatory=$true)][string] $name,
	[Parameter(Mandatory=$true)][string] $value,
	[bool] $inline = $false
    )

    [DiscordField]::new($name, $value, $field)
}

function New-TumultFooter {
    param(
        [string] $text = $null,
	[URI] $icon_url = $null
    )

    [DiscordFooter]::new($text, $icon_url)
}

Export-ModuleMember -Function New-TumultWebhook,New-TumultAuthor,New-TumultEmbed,New-TumultField,New-TumultFooter

