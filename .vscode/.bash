echo teste-dev-pleno .bash
bash="C:\Program Files\Git\bin"
cmd="C:\WINDOWS\system32"
powershell="C:\WINDOWS\System32\WindowsPowerShell\v1.0"
code="C:\Program Files\Microsoft VS Code\bin"
git="C:\Program Files\Git\mingw64\bin"
node="\\Program Files\nodejs\v16.16.0\bin"
mysql="\\Program Files\mysql-installer\8.0.42\app\bin"
PATH=$(/bin/cygpath -p "$bash;$cmd;$powershell;$code;$git;$node;$mysql")
