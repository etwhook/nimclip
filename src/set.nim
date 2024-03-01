import winim

let okcb = OpenClipboard(cast[HWND](NULL))
if okcb != 1:
    echo("[-] Failed.")
    quit(-1)
let data = "celestial"
let len = data.len() + 1
let hMem = GlobalAlloc(GMEM_MOVEABLE, len)
let lpData = cast[LPCSTR](GlobalLock(hMem))
lstrcpynA(lpData, data, cast[int32](len))
GlobalUnlock(hMem)
EmptyClipboard()
SetClipboardData(CF_TEXT, hMem)
CloseClipboard()