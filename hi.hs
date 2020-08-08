import Control.Monad;

main :: IO ()
main = do
    let message = reversedWords "Hi there!"
    chant 3 message

chant :: Int -> String -> IO ()
chant count message = replicateM_ count $ putStrLn message
-- chant count message
--     | count <= 0 = return ()
--     | otherwise = do
--         putStrLn message
--         chant (count - 1) message

reversedWords :: String -> String
reversedWords = unwords . reverse . words
