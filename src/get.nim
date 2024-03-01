import winim

let okcb = OpenClipboard(cast[HWND](NULL))
if okcb != 1:
    echo("[-] Failed.")
    quit(-1)

let hData = GetClipboardData(CF_TEXT)
let data = cast[LPCSTR](GlobalLock(hData))
echo(data)
GlobalUnlock(hData)
CloseClipboard()