WScript.Echo "����� �������!"
Dim menu
menu=0
do while menu <> 4
WScript.StdOut.Write "******************************" & VbLf
WScript.StdOut.Write "�������� ����� ����: " & VbLf
WScript.StdOut.Write "1. ������� ���������� " & VbLf
WScript.StdOut.Write "2. ������� ����� � ���������� ����� � �������� " & VbLf
WScript.StdOut.Write "3. ���������� � �������� ���� �������� � ������� �������� ����� " & VbLf
WScript.StdOut.Write "4. ����� " & VbLf
WScript.StdOut.Write "******************************" & VbLf
menu = WScript.StdIn.ReadLine
dim Location, NewLocation, FSO, File, Folder, Datee, Sizee

  Select case menu
    case 1 
      WScript.StdOut.Write "������� ��������� �������������, ���-11" & VbLf 
    case 2
      WScript.StdOut.Write "������� ����������������� � ��� �����: " & VbLf 
      Location = WScript.StdIn.ReadLine
      WScript.StdOut.Write "������� �����������������, � ������� ����� ��������� ����: " & VbLf 
      NewLocation = WScript.StdIn.ReadLine
      Set FSO = CreateObject("Scripting.FileSystemObject")
      FSO.MoveFile Location, NewLocation
	case 3
	    WScript.StdOut.Write "������� ������������ ��� �����: " & VbLf 
        Location = WScript.StdIn.ReadLine
		Set FSO = WScript.CreateObject("Scripting.FileSystemObject")
		Set Folder = FSO.GetFolder(Location)
		Datee = Folder.DateCreated
		Sizee = Folder.Size/1024
		Set File = FSO.OpenTextFile("C:\Users\User\Desktop\��\���2\respond.txt", 2, True)
		File.Write Datee
        File.Write Sizee
        File.Close
    case 4
      WScript.StdOut.Write "�������������� ����� �� �������" & VbLf
    case Else
      WScript.StdOut.Write "������ ����� ���� �� ����������" & VbLf
  End select
loop