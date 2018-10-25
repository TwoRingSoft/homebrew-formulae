# homebrew-formulae

Tap this collection of Homebrew formulae:

```
brew tap tworingsoft/formulae
```

then you can `brew install` any of the projects:

```
brew install vrsn
brew install xcbs
```

Contribute directly to projects in this tap:

- [vrsn](https://github.com/TwoRingSoft/Vrsnr)
- [xcbs](https://github.com/TwoRingSoft/xcbs)

## Updating formula

Update the details in the `.rb` file and test it locally:

`brew install --build-from-source ./Formula/vrsn.rb`

or if it's already present,

`brew update --build-from-source ./Formula/vrsn.rb`

It will complain about the SHA sum mismatch; take the new value and replace it in the formula `.rb` file.
