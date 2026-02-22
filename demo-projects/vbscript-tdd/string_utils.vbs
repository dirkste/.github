' String Utility Module
' Provides helper functions for string manipulation

' Reverse a string
Function ReverseString(inputStr)
    Dim i, result
    result = ""
    For i = Len(inputStr) To 1 Step -1
        result = result & Mid(inputStr, i, 1)
    Next
    ReverseString = result
End Function

' Check if string is palindrome (ignoring case)
Function IsPalindrome(inputStr)
    Dim normalized, reversed
    normalized = LCase(inputStr)
    reversed = ReverseString(normalized)
    IsPalindrome = (normalized = reversed)
End Function

' Capitalize first letter of each word
Function CapitalizeWords(inputStr)
    Dim words, i, result
    words = Split(inputStr, " ")
    result = ""
    For i = 0 To UBound(words)
        If Len(words(i)) > 0 Then
            If Len(result) > 0 Then result = result & " "
            words(i) = UCase(Mid(words(i), 1, 1)) & LCase(Mid(words(i), 2))
            result = result & words(i)
        End If
    Next
    CapitalizeWords = result
End Function
