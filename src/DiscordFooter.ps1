Class DiscordFooter {
    [string] $text
    [Uri] $icon_url

    DiscordFooter([string] $text, [Uri] $icon_url) {
        $this.text = $text
        $this.icon_url = $icon_url
    }

    DiscordFooter([string] $text) {
        $this.text = $text
        $this.icon_url = $null
    }

    DiscordFooter([Uri] $icon_url) {
        $this.text = $null
        $this.icon_url = $icon_url
    }

    DiscordFooter() { }
}
