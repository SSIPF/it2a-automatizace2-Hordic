@echo off

for/ f "tokens=1-3 delims,", %%a in (uzivatele.txt) do (
    net user "%%a%" %%b /add
    echo Byl vytvoren uzivatel "%%a"
    net localgroup %%c /add
    echo Byla vytvorena skupina "%%c"
    net localgroup "%%c" "%%a" /add
    echo Uzivatel byl pridan do skupiny %%c
)

