On Error Resume Next
Dim username, password, berletar
Const forappending = 8
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objfile = objFSO.OpenTextFile("c:\BKKcryptedpassword.txt", ForAppending, True)
username= InputBox ("Kerem a felhasznalonevet, lehet üres is")
password= InputBox ("Kerem a jelszot, lehet üres is")
MsgBox ("amit Ön beírt felhasználónévnek: "&username& vbLf&"és jelszónak: "&password & vbLf& "ezt most hasheli a rendszerünk és"&vbLf& "eltárolja utána egy plain text fileban")
hashing(password)
MsgBox ("idáig nagyon jól haladunk, akkor most vegyünk bérletet")
MsgBox "nálunk 10.000.- HUF egy bérlet. Ez megfelel önnnek?",vbYesNo
berletar = InputBox("értem, akkor írjon be egy önnek megfelelő árat, hogy önnek is jó-e a 10.000.- HUF összeg?")
If berletar > 50 Then
berletar =50 
End If
If berletar < 0 Then
berletar =50 
End If
objfile.WriteLine "username;"&username&";password;"&password 'Józsi! majd legközelebb innen szedje a usernév/jelszó párost, mert nem tudom feltolni a szerverre!
objfile.Close 'Jószia, ha visszajöttél szabiról, ezt is nézd meg, mert linux alól hibát dob ki a c:\ -ra!
MsgBox "az új bérletár :" & vbLf&berletar, vbYesNo
MsgBox "Köszönjük, hogy nálunk vásárolt..."

Function hashing(password)
Set password = Nothing 'Józsi! ide majd írj be egy olyan algo... alogo, szóval érted, ami kódol, rendben?
End Function
