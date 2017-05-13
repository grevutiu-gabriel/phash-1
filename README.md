# phash: Haskell bindings to pHash, the open source perceptual hash library

[![Build Status](https://travis-ci.org/MichaelXavier/phash.svg?branch=master)](https://travis-ci.org/MichaelXavier/phash)

PHash is a library for generating perceptual hashes of media files. These
bindings currently only support images. You can compare these hashes to detect
visually similar images.

## Installation Notes
Note that this library does not come bundled with the source code for pHash.
You must install that yourself. Your package manager may have it available as
`libphash1` (in Ubuntu 16.04). If that is not available, you can install it from source from
http://phash.org.

## Usage

```haskell
import Data.PHash

main = do
  Just h1 <- imageHash "somefile.jpg"
  print h1
  print =<< imagesSimilar "somefile.jpg" "similarfile.jpg" reasonableThreshold
  where reasonableThreshold = 15
```
or

  ```
  sudo add-apt-repository ppa:gabriel1984sibiu/aplicatii3
  sudo apt update
  sudo apt install libphash1 libphash1-dev
  cd phash-1/
  cabal install phash
  ghc --make phash
  ./phash
```
# Credit
All credit goes to the original pHash authors. For more information about pHash
visit http://phash.org

# Contributors

* [Michael Xavier](http://github.com/MichaelXavier)
* [Hans Raaf](https://github.com/oderwat)
