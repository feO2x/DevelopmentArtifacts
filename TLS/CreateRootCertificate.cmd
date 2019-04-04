makecert.exe -r -n "CN=%1" -pe -sv %1.pvk -a sha512 -len 2048 -cy authority %1.cer

pvk2pfx.exe -pvk %1.pvk -spc %1.cer -pfx %1.pfx