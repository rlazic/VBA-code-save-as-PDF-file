Sub publish()
Dim cell_1 As Range
Set cell_1 = Range("B9")
Dim name As String
    name = "C:\Users\Korisnik\Desktop\Mare Charter\Fakture\" & cell_1

Dim PT As PivotTable
Dim rng1 As Range
Dim rng2 As Range

Set PT = ActiveSheet.PivotTables("PivotTable2")
Set rng1 = ActiveSheet.Range("A1:K19", "A58:K73")

    Application.Union(rng1, PT.TableRange2).Select
    ActiveSheet.DisplayPageBreaks = False
    Selection.ExportAsFixedFormat Type:=xlTypePDF, Filename:= _
        name, Quality:= _
        xlQualityStandard, IncludeDocProperties:=True, IgnorePrintAreas:=False, _
        OpenAfterPublish:=True
        

End Sub



