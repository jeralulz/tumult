# Something compelled me to do this

I actually have no exact use case for it but I didn't find anyone having done it either, so here I am.
This is the thinnest wrapper to make working with Discord Webhooks just a tiny bit less annoying than straight up calling `Invoke-WebRequest -Method Post -ContentType 'application/json' -Body...`

## Usage
```powershell
$ ./package.ps1                     # generate tumult.psm1 by running package.ps1
$ Import-Module ./tumult.psm1       # import the generated Module file and use it
```

Currently there are now exported functions to send a message of anykind. Should you want to use it, fallback to using the `[DiscordWebhook].Send()` function after setting up content and the like.

## Example
A complete example how to use the webhook is under `./example/` for brevity's sake here is a minimal working example
```powershell
$ $wh = New-TumultWebhook YOUR_WEBHOOK
$ $wh.content = 'Text message. Up to 2000 characters.'                                                                                             
$ $wh.Send() 
```
