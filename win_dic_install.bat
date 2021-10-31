
@rem 変数の定義-------------------------------------------

@set SRC_DIR=mecab-0.996\src\
@set DIC_SRC_DIR=mecab-ipadic-2.7.0-20070801\
@set BIN_INSTALL_DIR=bin\
@set DIC_INSTALL_DIR=bin\dic\
@set MECAB_DICT_INDEX=%BIN_INSTALL_DIR%mecab-dict-index.exe

@rem コマンド実行--------------------------------------------

@set ROOT_DIR=%CD%

@rem インストール先フォルダの確認と生成
@ if not exist %DIC_INSTALL_DIR% @md %DIC_INSTALL_DIR%

@ "%MECAB_DICT_INDEX%" -d %DIC_SRC_DIR% -o %DIC_INSTALL_DIR% -f EUC-JP -t utf-8

@echo dicdir=%DIC_INSTALL_DIR%>%BIN_INSTALL_DIR%mecabrc

@copy %DIC_SRC_DIR%dicrc %DIC_INSTALL_DIR%dicrc


