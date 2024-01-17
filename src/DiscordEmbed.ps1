Class DiscordEmbed {
    [int] $color
    [DiscordAuthor] $author
    [string] $title
    [Uri] $url
    [string] $description
    [System.Collections.Generic.List[DiscordField]] $fields = [System.Collections.Generic.List[DiscordField]]::new()
    $thumbnail = @{url = $null}
    $image = @{url = $null}
    [DiscordFooter] $footer
}
