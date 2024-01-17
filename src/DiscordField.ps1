Class DiscordField {
    [string] $name
    [string] $value
    [bool] $inline

    DiscordField([string] $name, [string] $value, [bool] $inline) {
        $this.name = $name;
        $this.value = $value;
        $this.inline = $inline;
    }

    DiscordField([string] $name, [string] $value) {
        $this.name = $name;
        $this.value = $value;
        $this.inline = $false;
    }

    DiscordField() { }
}
