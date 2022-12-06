# Test publishing signed container inside github actions

## Keys

I have used `cosign` tool to generate private and public keys.
They are stored inside files `cosign.pub` and `cosign.key` and generated with password `qwerty`.
It is not secure and is only for research purpose (always store your private key in safe place!).
Private key should be attached as secret to your repository settings.

## Pipeline

[Pipeline article](https://dev.to/n3wt0n/sign-your-container-images-with-cosign-github-actions-and-github-container-registry-3mni)

It is simple pipeline wich: builds container, publishes it and signs it with key stored in secrets.
You can use cosign feature to sent keys directly to github secrets described in linked article.
Container can be verified by command 
```
cosign verify --key cosign.pub ghcr.io/smogork/actions-publish-test:main
```