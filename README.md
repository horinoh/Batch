# Batch

* エコーオフ Set echo off
  ~~~
  @echo off
  ~~~
* 空文字を echo すると「ECHO は <OFF> です」と出るのを抑制
  ~~~
  if not "%i"=="" echo %i
  ~~~

* 実行中に値を変化させる Change value when executing
  * 通常変数はfor文等に入る前に**静的に評価される**のを毎回評価されるようにする
    ~~~
    setlocal enabledelayedexpansion
    ~~~

* 環境変数 Set environment variable
  ~~~
  setx XXX_PATH "C:\..."
  ~~~

* カレントディレクトリ　Current directory
  ~~~
  echo %~dp0
  ~~~

* ファイル(iが変数の場合)
  ~~~
  %~i  : "" を取り除く
  %~ai : 属性
  %~di : ドライブ
  %~fi : フルパス
  %~ni : ベースネーム
  %~pi : パス
  %~si : 短い名前
  %~ti : 日付
  %~xi : 拡張子
  %~zi : ファイルサイズ
  ~~~

* バッチ呼び出し Call batch
  ~~~
  call XXX.bat 
  ~~~

* 返り値 Return value
  ~~~
  exit 0
  %errorlevel%
  ~~~

* リダイレクトを受け取る Receive redirect
  ~~~
  for /f %%i in ('findstr .*') do (
    echo %%i
  )
  ~~~
  ~~~
  type XXX.txt | sort | XXX.bat
  ~~~

* 置換 Replace
  ~~~
  !i:FROM=TO!
  ~~~

* トークン Token
  ~~~
  for /f "tokens=1-3 delims=," %%i in (...) do (
  )
  ~~~

# VBS
* コマンドプロンプトを開かずにバッチ(XXX.bat)を実行したい場合VBSでワンクッション入れる
  ~~~
  rem コマンドプロンプトを開かずにバッチを実行したい
  CreateObject("Wscript.Shell").Run "XXX.bat", 0, True
  ~~~

# PowerShell
* man
  ~~~
  Get-Help Get-Content
  ~~~
  * 予め、管理者として PowerShell を実行して Update-Help しておく

* echo
  ~~~
  Wirte-Host("hoge")
  ~~~

* for
  ~~~
  for($i=0;$i -lt 10;$i++){ Write-Host($i) }
  ~~~

* sort, uniq
  ~~~
  Get-Content .\hoge.txt | Sort-Object -Unique
  Get-Content .\hoge.txt | Sort-Object | Get-Unique
  ~~~

* grep
  ~~~
  Select-String .\hoge.txt -Pattern "HOGE"
  ~~~

* tail
  ~~~
  Get-Content .\hoge.txt -Tail 3
  ~~~

* 文字コード変換
  ~~~
  Get-Content \.hoge.txt | Set-Content .\utf8bom.txt -Encoding UTF8
  Get-Content \.hoge.txt | Set-Content .\utf16le.txt -Encoding Unicode
  Get-Content \.hoge.txt | Set-Content .\sjis.txt -Encoding default
  ~~~