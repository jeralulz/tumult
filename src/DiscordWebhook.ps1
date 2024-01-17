Class DiscordWebhook {
    [Uri] $webhook
    [string] $username
    [Uri] $avatar_url
    [string] $content
    [System.Collections.Generic.List[DiscordEmbed]] $embeds = [System.Collections.Generic.List[DiscordEmbed]]::new()
    [bool] $tts

    DiscordWebhook([Uri] $webhook) {
        $this.webhook = $webhook
    }

    hidden Send() {
        $body =
        @{
            username = $this.username
            avatar_url = $this.avatar_url
            content = $this.content
            embeds = $this.embeds
            tts = $this.tts
        }
        Invoke-WebRequest -Method Post -ContentType 'application/json' -Body $($body | ConvertTo-Json -Compress -Depth 10) -Uri $this.webhook
    }
}
