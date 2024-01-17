Class DiscordAuthor {
    [string] $name
    [Uri] $url
    [Uri] $icon_url

    DiscordAuthor([string] $name, [Uri] $url, [Uri] $icon_url) {
        $this.name = $name;
        $this.url = $url;
        $this.icon_url = $icon_url;
    }

    DiscordAuthor([string] $name, [Uri] $url) {
        $this.name = $name;
        $this.url = $url;
        $this.icon_url = $null;
    }

    DiscordAuthor([string] $name) {
        $this.name = $name;
        $this.url = $null;
        $this.icon_url = $null;
    }

    DiscordAuthor() { }
}
