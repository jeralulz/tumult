$wh = New-TumultWebhook <YOUR_WEBHOOK>
$wh.content = 'Text message. Up to 2000 characters.'
$wh.username = 'Webhook'
$wh.avatar_url = 'https://i.imgur.com/4M34hi2.png'
$em1 = New-TumultEmbed
$em1.author = New-TumultAuthor -name 'foo' -url 'https://www.reddit.com/r/cats/' -icon_url 'https://i.imgur.com/R66g1Pe.jpg'
$em1.title = 'Title'
$em1.url = 'https://youtube.com'
$em1.description = 'Text message. You can use Markdown here. *Italic* **bold** __underline__ ~~strikeout~~ [hyperlink](https://google.com) `code`'
$em1.color = 15258703
$em1.fields.Add((New-TumultField -name 'Text' -value 'More text' -inline $true))
$em1.fields.Add((New-TumultField -name 'Even more text' -value 'yup' -inline $true))
$em1.fields.Add((New-TumultField -name 'Use `"inline": true` parameter, if you want to display fields in the same line.' -value 'okay...'))
$em1.thumbnail.url = 'https://i.imgur.com/Grwmc5K.jpeg'
$em1.image.url = 'https://i.imgur.com/tNXZJUf.jpeg'
$em1.footer = New-TumultFooter -text 'Woah! So cool! :smirk:' -icon_url 'https://i.imgur.com/fKL31aD.jpg'
$wh.embeds.Add($em1)
$wh.Send()
