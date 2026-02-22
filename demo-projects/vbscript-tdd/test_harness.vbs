' VBScript Test Harness for TDD
' Simple custom testing framework for VBScript demonstrations

Class TestHarness
    Private testCount
    Private passCount
    Private failCount
    Private results()
    Private resultIndex
    
    Private Sub Class_Initialize()
        testCount = 0
        passCount = 0
        failCount = 0
        resultIndex = 0
        ReDim results(99)
    End Sub
    
    ' Assert that a condition is true
    Public Sub Assert(condition, message)
        testCount = testCount + 1
        If condition Then
            passCount = passCount + 1
            results(resultIndex) = "✓ PASS: " & message
        Else
            failCount = failCount + 1
            results(resultIndex) = "✗ FAIL: " & message
        End If
        resultIndex = resultIndex + 1
    End Sub
    
    ' Print test results summary
    Public Sub PrintResults()
        Dim i
        WScript.Echo ""
        WScript.Echo "========== TEST RESULTS =========="
        For i = 0 To resultIndex - 1
            WScript.Echo results(i)
        Next
        WScript.Echo "=================================="
        WScript.Echo "Total: " & testCount & " | Pass: " & passCount & " | Fail: " & failCount
        WScript.Echo ""
        
        If failCount > 0 Then
            WScript.Echo "STATUS: FAILED"
            WScript.Quit(1)
        Else
            WScript.Echo "STATUS: PASSED"
            WScript.Quit(0)
        End If
    End Sub
End Class
