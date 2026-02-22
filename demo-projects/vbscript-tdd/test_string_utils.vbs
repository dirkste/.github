' VBScript TDD Test Suite for String Utilities
' Tests should_[action]_when_[condition]

' Include test harness and module
ExecuteGlobal CreateObject("Scripting.FileSystemObject").OpenTextFile(GetScriptPath() & "\test_harness.vbs").ReadAll()
ExecuteGlobal CreateObject("Scripting.FileSystemObject").OpenTextFile(GetScriptPath() & "\string_utils.vbs").ReadAll()

Function GetScriptPath()
    GetScriptPath = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
End Function

' Initialize Test Harness
Dim tester
Set tester = New TestHarness

' Test ReverseString
tester.Assert ReverseString("hello") = "olleh", "should_reverse_string_when_given_simple_word"
tester.Assert ReverseString("") = "", "should_return_empty_when_reversing_empty_string"
tester.Assert ReverseString("a") = "a", "should_return_same_when_reversing_single_character"

' Test IsPalindrome
tester.Assert IsPalindrome("racecar") = True, "should_return_true_when_checking_palindrome"
tester.Assert IsPalindrome("RACECAR") = True, "should_return_true_when_checking_palindrome_ignoring_case"
tester.Assert IsPalindrome("hello") = False, "should_return_false_when_checking_non_palindrome"

' Test CapitalizeWords
tester.Assert CapitalizeWords("hello world") = "Hello World", "should_capitalize_each_word_when_given_sentence"
tester.Assert CapitalizeWords("HELLO") = "Hello", "should_lowercase_remaining_letters_when_capitalizing_word"

' Print results and exit
tester.PrintResults()
