```haskell
data Person = Person { name :: String, age :: Int }

instance Ord Person where
  compare (Person name1 age1) (Person name2 age2) = compare (age1, name1) (age2, name2)

main :: IO ()
main = do
  let people = [Person "Alice" 30, Person "Bob" 25, Person "Charlie" 35]
  let sortedPeople = sort people
  print sortedPeople
```
This improved code defines a `Person` data type and an `Ord` instance for it. The `Ord` instance defines how to compare two `Person` objects based on age first, then name.  This ensures that the `sort` function works correctly for this custom data type.  For larger datasets, consider exploring more specialized sorting algorithms based on your data's characteristics to improve performance.