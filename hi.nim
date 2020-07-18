import algorithm
import strutils

func reversedWords(text: string): string =
    text.split.reversed.join(" ")

proc main() =
    echo "Hi there!".reversedWords

main()
