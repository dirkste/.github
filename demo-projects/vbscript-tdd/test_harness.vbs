' VBScript Test Harness for TDD
' Simple custom testing framework for VBScript demonstrations

Class TestHarness
    Private testCount
    Private passCount
    Private failCount
    Private results
    
    Private Sub Class_Initialize()
        testCount = 0
        passCount = 0
        failCount = 0
        Set results = CreateObject("System.Collections.ArrayList")
    End Sub
    
    ' Assert that a condition is true
    Public Sub Assert(condition, message)
        testCount = testCount + 1
        If condition Then
            passCount = passCount + 1
            results.Add "✓ PASS: " & message
        Else
            failCount = failCount + 1
            results.Add "✗ FAIL: " & message
        End If
    End Sub
    
    ' Print test results summary
    Public Sub PrintResults()
        Dim i
        WScript.Echo ""
        WScript.Echo "========== TEST RESULTS =========="
        For i = 0 To results.Count - 1
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
