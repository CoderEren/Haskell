class Eqs a where
   (==) :: a -> a -> Bool
   
instance Eqs Int where
    0 == 0 = True
    1 == 1 = True

data Fruit = Apple | Orange 

instance Eqs Fruit where
    Apple == Orange = True