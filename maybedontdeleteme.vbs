' VBScript: LocalFileCheck.vbs
Option Explicit

Dim fso, requiredFiles, missingFiles, file
Set fso = CreateObject("Scripting.FileSystemObject")

' Files to check in the current folder
requiredFiles = Array("brain.txt", "stupid.bmp", "958rjseakdjfdflksdjijfsklfjsdklfsjdkladfjflkjdslafsjdklj3490qw90rqweefdhjkhasdjfhsajfhssjdkaf.txt", "CASQODXZ.txt", "TEQXREHV.txt", "WFTVFOJE.txt" )
Set missingFiles = CreateObject("Scripting.Dictionary")

For Each file In requiredFiles
    If Not fso.FileExists(file) Then
        missingFiles.Add file, True
    End If
Next

If missingFiles.Count = 0 Then
    MsgBox "like lol", vbExclamation, "you gonna do anything?"
Else
    Dim msg: msg = "delete more" & vbCrLf
    For Each file In missingFiles.Keys
        msg = msg & "u only deleted " & file & vbCrLf
    Next
    MsgBox msg, vbExclamation, "Files Missing"
End If
