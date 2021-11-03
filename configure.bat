@rem win_setup.bat
@rem Copyright (c) 2021, nanamedou


@rem ファイルの説明 開始-------------------------------------------
@rem configure.bat
@rem    他のbatファイルで使う変数を定義します。
@rem    直接コンソールから呼んで使うことはありません。
@rem ファイルの説明 終了-------------------------------------------

@rem ビルドモード(X64,X86)
@set BUILD_MODE=X64

@rem セットアップ変数の定義-------------------------------------------

@rem vcvarsallコマンド
@set VSVARS_CMD_X64="C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x64
@set VSVARS_CMD_X86="C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat" x86

@rem ビルド関連定義-------------------------------------------

@rem ソースフォルダ
@set SRC_DIR=mecab-0.996\src\

@rem exe,dllファイルの保存先
@set BIN_INSTALL_DIR=bin\
@rem libファイルの保存先
@set LIB_INSTALL_DIR=lib\

@rem ビルド後に初期化する(1=Yes,others=No)
@set BUILD_CLEANUP=1

@rem 辞書バイナリ変換関連定義-------------------------------------------

@rem 辞書フォルダ
@set DIC_SRC_DIR=mecab-ipadic-2.7.0-20070801\
@rem mecabの辞書バイナリの保存先
@set DIC_INSTALL_DIR=bin\dic\
@rem mecabの辞書作成ソフト(mecabと一緒にビルドしてできるやつ)のパス
@set MECAB_DICT_INDEX=%BIN_INSTALL_DIR%mecab-dict-index.exe

@rem その他-------------------------------------------

@rem コンソールの処理能力設定
@Set COMSPEC=cmd.exe
