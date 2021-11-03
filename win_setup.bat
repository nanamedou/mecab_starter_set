@rem win_setup.bat
@rem Copyright (c) 2021, nanamedou

@chcp 65001
@rem ↑ファイルのエンコーディングがおおむねutf-8なので
@rem コンソール上での文字化けを防止する

@rem 変数ロード

@call configure.bat

@rem vcvarsでの実行環境の整備

@if "%BUILD_MODE%"=="X64" (
@set VSVARS_CMD=%VSVARS_CMD_X64%
) else if "%BUILD_MODE%"=="X86" (
@set VSVARS_CMD=%VSVARS_CMD_X86%
) else (
@echo error:BUILD_MODE is incorrect!!
exit
)

@call %VSVARS_CMD%

@call feafefe
