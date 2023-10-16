isSingle :: [a] -> Bool
isSingle [x] = True
isSingle _ = False

head2 :: [a] -> a
head2 (x:xs) = x 
head2 [] = error "cannot do that"