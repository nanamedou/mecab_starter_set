@rem 変数の定義-------------------------------------------

@set SRC_DIR=mecab-0.996\src\
@set BIN_INSTALL_DIR=bin\
@set LIB_INSTALL_DIR=lib\

@rem コマンド実行--------------------------------------------

@set ROOT_DIR=%CD%

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
@cd %SRC_DIR%
@rem nmake -f Makefile.msvc.in clean
@cd %ROOT_DIR%
