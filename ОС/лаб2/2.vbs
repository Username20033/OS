WScript.Echo "Салам Алейкум!"
Dim menu
menu=0
do while menu <> 4
WScript.StdOut.Write "******************************" & VbLf
WScript.StdOut.Write "Выберете пункт меню: " & VbLf
WScript.StdOut.Write "1. Краткая информация " & VbLf
WScript.StdOut.Write "2. Перенос файла с указанного места в заданное " & VbLf
WScript.StdOut.Write "3. Сохранение в блокноте даты создания и размера заданной папки " & VbLf
WScript.StdOut.Write "4. Выход " & VbLf
WScript.StdOut.Write "******************************" & VbLf
menu = WScript.StdIn.ReadLine
dim Location, NewLocation, FSO, File, Folder, Datee, Sizee

  Select case menu
    case 1 
      WScript.StdOut.Write "Цветков Александр Александрович, ИТИ-11" & VbLf 
    case 2
      WScript.StdOut.Write "Укажите месторасположение и имя файла: " & VbLf 
      Location = WScript.StdIn.ReadLine
      WScript.StdOut.Write "Укажите месторасположение, в которое будет перенесен файл: " & VbLf 
      NewLocation = WScript.StdIn.ReadLine
      Set FSO = CreateObject("Scripting.FileSystemObject")
      FSO.MoveFile Location, NewLocation
	case 3
	    WScript.StdOut.Write "Введите интересующую Вас папку: " & VbLf 
        Location = WScript.StdIn.ReadLine
		Set FSO = WScript.CreateObject("Scripting.FileSystemObject")
		Set Folder = FSO.GetFolder(Location)
		Datee = Folder.DateCreated
		Sizee = Folder.Size/1024
		Set File = FSO.OpenTextFile("C:\Users\User\Desktop\ОС\лаб2\respond.txt", 2, True)
		File.Write Datee
        File.Write Sizee
        File.Close
    case 4
      WScript.StdOut.Write "Осуществляется выход из скрипта" & VbLf
    case Else
      WScript.StdOut.Write "Такого пунка меню не существует" & VbLf
  End select
loop