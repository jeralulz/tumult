$Script:tumult = $null

$libs = @()
$libs += @(Get-ChildItem ./src/DiscordAuthor.ps1)
$libs += @(Get-ChildItem ./src/DiscordField.ps1)
$libs += @(Get-ChildItem ./src/DiscordFooter.ps1)
$libs += @(Get-ChildItem ./src/DiscordEmbed.ps1)
$libs += @(Get-ChildItem ./src/DiscordWebhook.ps1)

foreach($lib in $libs) { try { . $lib.fullname } catch { write-error "Import failed for $($lib.fullname): $_"}}
