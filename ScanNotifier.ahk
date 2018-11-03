PB_Token := "InsertTokenHere"
PB_Title := "Epson Scan Status"
PB_Message := "Film Scan Complete"
; MsgBox % PB_PushNote(PB_Token, PB_Title, PB_Message)
PB_PushNote(PB_Token, PB_Title, PB_Message)
{
WinHTTP := ComObjCreate("WinHTTP.WinHttpRequest.5.1")
WinHTTP.SetProxy(0)
WinHTTP.Open("POST", "https://api.pushbullet.com/v2/pushes", 0)
WinHTTP.SetCredentials(PB_Token, "", 0)
WinHTTP.SetRequestHeader("Content-Type", "application/json")
PB_Body := "{""type"": ""note"", ""title"": """ PB_Title """, ""body"": """ PB_Message """}"
WinHTTP.Send(PB_Body)
Result := WinHTTP.ResponseText
Status := WinHTTP.Status
return Status
}

#Space::
while(true)
{
	if (WinExist("Progress") or WinExist("Progress (Not Responding)"))
	{
		while(true)
		{
			if !(WinExist("Progress") or WinExist("Progress (Not Responding)"))
			{
				PB_PushNote(PB_Token, PB_Title, PB_Message)
				return
			}
		}
	}
}
