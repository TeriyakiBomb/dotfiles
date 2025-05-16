Because you are dumb, this is how to update chezmoi:

1. Update the config
2. run `chezmoi add <file just changed>`
3. run `chezmoi git add <file just changed>`

you can just run git commands via chezmoi with `chezmoi` then whatever in git

`chezmoi cd` takes you to the repo.

`chezmoi apply` will apply changes from the chezmoi repo, not apply newly changed files to the chezmoi repo.

if in doubt, check atuin history, also there is a `chez` command
