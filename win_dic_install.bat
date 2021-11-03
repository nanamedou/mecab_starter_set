
@rem 変数読み込み
@call configure.bat

@set ROOT_DIR=%CD%

@rem インストール先フォルダの確認と生成
@ if not exist %DIC_INSTALL_DIR% @md %DIC_INSTALL_DIR%

@ "%MECAB_DICT_INDEX%" -d %DIC_SRC_DIR% -o %DIC_INSTALL_DIR% -f EUC-JP -t utf-8

@echo dicdir=%DIC_INSTALL_DIR%>%BIN_INSTALL_DIR%mecabrc

@copy %DIC_SRC_DIR%dicrc %DIC_INSTALL_DIR%dicrc


