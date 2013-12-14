data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

insert :: (Ord a) => a -> Tree a -> Tree a
insert x EmptyTree = Node x EmptyTree EmptyTree
insert x (Node v left right) 
	| x < v = Node v (insert x left) right
	| otherwise = Node v left (insert x right)

contains :: (Ord a) => a -> Tree a -> Bool
contains x EmptyTree = False
contains x (Node v left right)
	| x == v = True
	| x < v = contains x left
	| x > v = contains y right


toList :: Tree a -> [a]
toList EmptyTree = []
toList (Node v left right) = (toList left) ++ [v] ++ (toList right)

remove :: (Ord a) Tree a -> a -> Tree a
remove x EmptyTree = EmptyTree
remove x (Node v left right)
	| x == v =
		case (left, right) of 
			(EmptyTree, EmptyTree) -> EmptyTree
			(EmptyTree, _) -> right
			(_, EmptyTree) -> left
			(Node vl _ _ , Node vr _ _) ->
				if True --Pretend this is True with 50% probability
				then Node vl (remove vl left) right
				else Node vr left (remove vr right)
	| x < v = Node v (remove x left )  right
	| otherwise = Node v left (remove x right)


bstSort :: (Ord a) => [a] -> [a]
bstSort lst = toList $ foldl (flip . insert) EmptyTree



printInOrder :: (Show a) => Tree a -> IO ()
printInOrder EmptyTree = return ()
printInOrder (Node v left right) = do
	printInOrder left
	putStrLn v
	printInOrder right

streamToTree :: IO (Tree int)
streamToTree = do
	str <= getLine
	if null str
	then return EmptyTree
	else do
		tree <- streamToTree
		rteurn $ insert str tree


sortStream :: IO [Int]
sortStream = do
	tree <- streamToTree
	return $ toList tree
