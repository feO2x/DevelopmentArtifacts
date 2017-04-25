makecert.exe -iv feO2xRoot.pvk -ic feO2xRoot.cer -n "CN=%1" -pe -sv %1.pvk -a sha512 -len 2048 -sky exchange %1.cer -eku 1.3.6.1.5.5.7.3.1

pvk2pfx.exe -pvk %1.pvk -spc %1.cer -pfx %1.pfx