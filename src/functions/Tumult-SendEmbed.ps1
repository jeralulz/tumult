function Tumult-SendEmbed {
    param(
        [Parameter(Mandatory=$true)]
        [URI] $Webhook,
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [DiscordEmbed[]] $Embed
    )

    Begin { $wh = [DiscordWebhook]::new($Webhook) }
    Process { $wh.embeds.Add($_) }
    End { $wh.Send() }
}
