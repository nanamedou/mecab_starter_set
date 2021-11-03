# mecabスターターセット

## 概要

mecabのソースをwindowsでコンパイルできるように修正しました。  
コンパイルがしやすいようにファイルを追加・調整しました。  
標準ではutf-8で入出力できるようにしています。

## 利用方法(例)

環境: win10 + MSVC2019ビルドツールインストール済み + コマンドプロンプト

以下のコマンドを実行してビルドとインストール  

```
>win_setup.bat
>win_install.bat
>win_dic_install.bat
```

以下のコマンドを実行してmecabを実行  
コンソールのバグでutf-8を直接受け付けてくれないのでパイプを介して入力する。

```
>echo 今日はいい天気|bin\mecab.exe   
今日    名詞,副詞可能,*,*,*,*,今日,キョウ,キョー
は      助詞,係助詞,*,*,*,*,は,ハ,ワ
いい    形容詞,自立,*,*,形容詞・イイ,基本形,いい,イイ,イイ
天気    名詞,一般,*,*,*,*,天気,テンキ,テンキ
EOS
```

configure.batを書き換えることで保存するフォルダやソースの位置を変更できます。特に、BUILD_MODEを変更することで32bitでビルドできます。  

## 実行できないときの対処法

win_setup.bin の実行時に以下のメッセージが出る。  
```
'C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build\vcvarsall.bat' is not recognized as an internal or external command,
operable program or batch file.
```

configure.bat内のVSVARS_CMD_X64とVSVARS_CMD_X86を修正してください。
vcvarsallはMSVCビルドツール等に含まれています。別途インストールしてください。  
configure.bat変更例:
```
VSVARS_CMD_X64="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build" x64
VSVARS_CMD_X86="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build" x86
```


## 内容物

- mecab本体コード(mecab-0.996)
- mecab辞書データ(mecab-ipadic-2.7.0-20070801)
- windowsでのコンパイル用あれこれ(*.bat)

## ライセンス

mecab本体コード(mecab-0.996)およびmecab辞書データ(mecab-ipadic-2.7.0-20070801)、windowsでのコンパイル用あれこれ(*.bat)で適用されるライセンスが異なります。  
mecab本体コード(mecab-0.996)およびmecab辞書データ(mecab-ipadic-2.7.0-20070801)はそれぞれのファイル内にあるCOPYINGファイルを確認してください。  
windowsでのコンパイル用あれこれ(*.bat)は三条項BSDライセンスが適用されます。詳しくはBSDファイルを確認ください。

## 予定

utf-8以外でもコンパイルできるようにする。
