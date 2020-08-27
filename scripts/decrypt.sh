#!/bin/sh
export GPG_TTY=$(tty)
mkdir ./secrets
mkdir ./tokens
gpg --quiet --batch --yes --decrypt --passphrase="$SECRETS_PASSPHRASE" \
--output ./secrets/credentials.json ./secrets_enc/credentials.json.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$SECRETS_PASSPHRASE" \
--output ./tokens/StoredCredential ./secrets_enc/StoredCredential.gpg
ls -la ./secrets/
ls -la ./tokens/



