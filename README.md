# dotfiles

```sh
$ ./install.sh
```

## Git

### SSH

```sh
# Generate a new SSH key and add it to the ssh-agent
$ ssh-keygen -t ed25519 -C "me@winterjung.dev" -f ~/.ssh/id_github
$ eval "$(ssh-agent -s)"
$ cat <<EOF > ~/.ssh/config
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_github
EOF
$ ssh-add -K ~/.ssh/id_github
# Add a new SSH key to my GitHub account
$ pbcopy < ~/.ssh/id_github.pub
$ open https://github.com/settings/ssh/new
```

### GPG

```sh
# Check for existing keys
$ gpg --list-secret-keys --keyid-format LONG
# Generate a new GPG key
$ gpg --full-generate-key
# Copy key ID (sec)
$ gpg --armor --export $KEY_ID | pbcopy
$ open https://github.com/settings/gpg/new
$ git config --global user.signingkey $KEY_ID
$ git config --global commit.gpgsign true
```

## TODO

- [ ] language support - asdf
- [ ] vscode extension
