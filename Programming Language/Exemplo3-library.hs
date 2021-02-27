type Person = String
type Book = String
type Database = [(Person, Book)]

exampleBase = 
    [("Alice", "Postman Pat"),("Anna", "All Alone"),("Alice", "Spot"),("Rory", "Postman Pat")]

-- Querry functions
books :: Database -> Person -> [Book]
books [] _ = []
books ((per,book):xs) person | (person == per) = book : (books xs person)
                             | otherwise = books xs person

borrowers :: Database -> Book -> [Person]
borrowers [] _ = []
borrowers ((per,book):xs) selectedBook | (selectedBook == book) = per : (borrowers xs selectedBook)
                                       | otherwise = borrowers xs selectedBook

borrowed :: Database -> Book -> Bool
borrowed [] _ = False
borrowed ((per,book):xs) selectedBook | (selectedBook == book) = True
                                      | otherwise = borrowed xs selectedBook 

-- I can't solve this shit
numBorrowed :: Database -> Person -> Int
numBorrowed [] _ = 0
numBorrowed ((per,book):xs) person | (person == per) = 1
                                   | otherwise = numBorrowed xs person
-- I can't solve this shit

-- -- Update functions
makeLoan :: Database -> Person -> Book -> Database
makeLoan db p b = (p,b) : db

returnLoan :: Database -> Person -> Book -> Database
returnLoan [] _ _ = []
returnLoan ((per,book):xs) person selectedBook | (per == person) && (book == selectedBook) = [(per, book)]
                                               | otherwise = returnLoan xs person selectedBook