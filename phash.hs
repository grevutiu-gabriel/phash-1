import Data.PHash

main = do
  Just h1 <- imageHash "somefile.jpg"
  print h1
  print =<< imagesSimilar "somefile.jpg" "similarfile.jpg" reasonableThreshold
  where reasonableThreshold = 15
