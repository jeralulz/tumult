function Send-SimpleMessage {
    param(
        [Parameter(Mandatory=$true)]
        [URI] $Webhook,
        [Parameter(Mandatory=$true, ValueFromPipeline=$true)]
        [string] $Message
    )

    $wh = [DiscordWebhook]::new($Webhook)
    $wh.content = $Message

    $wh.Send()
}
