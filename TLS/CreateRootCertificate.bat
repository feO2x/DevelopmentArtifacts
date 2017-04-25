makecert.exe -r -n "CN=feO2xRoot" -pe -sv feO2xRoot.pvk -a sha512 -len 2048 -cy authority feO2xRoot.cer

pvk2pfx.exe -pvk feO2xRoot.pvk -spc feO2xRoot.cer -pfx feO2xRoot.pfx