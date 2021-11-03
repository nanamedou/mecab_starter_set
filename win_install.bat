@rem 変数読み込み
@call configure.bat

@rem 復帰用ディレクトリパス
@set ROOT_DIR=%CD%

/MACHINE:X64

@if "%BUILD_MODE%"=="X64" (
@set ADDITIONAL_LDFLAGS=/MACHINE:X64
) else if "%BUILD_MODE%"=="X86" (
@set ADDITIONAL_LDFLAGS=/MACHINE:X86
) else (
@echo error:BUILD_MODE is incorrect!!
exit
)

@rem ソースフォルダに移動しコンパイル
@cd %SRC_DIR%
@nmake -f Makefile.msvc.in
@cd %ROOT_DIR%

@rem インストール先フォルダの確認と生成
@ if not exist %BIN_INSTALL_DIR% @md %BIN_INSTALL_DIR%
@ if not exist %LIB_INSTALL_DIR% @md %LIB_INSTALL_DIR%

@rem インストール
@copy "%SRC_DIR%*.exe" %BIN_INSTALL_DIR%. /Y
@copy "%SRC_DIR%*.dll" %BIN_INSTALL_DIR%. /Y
@copy "%SRC_DIR%*.pdb" %BIN_INSTALL_DIR%. /Y
@copy "%SRC_DIR%*.lib" %LIB_INSTALL_DIR%. /Y

@rem ソースフォルダに移動しクリーン
@ if %BUILD_CLEANUP%==1 (
@cd %SRC_DIR%
@nmake -f Makefile.msvc.in clean
@cd %ROOT_DIR%
)

