@rem 変数の定義-------------------------------------------

@rem 32bit用
@rem set VSVARS_CMD = "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x86

@rem 64bit用
@set VSVARS_CMD="C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64

@Set COMSPEC=cmd.exe

@rem コマンド実行--------------------------------------------

@rem ファイルのエンコーディングがおおむねutf-8なので
@rem コンソール上での文字化けを防止する

@chcp 65001

@rem vcvarsでの実行環境の整備

%VSVARS_CMD%
