#!/usr/bin/perl

# やぼったくっ,47,47,5026,形容詞,自立,*,*,形容詞・アウオ段,連用テ接続,やぼったい,ヤボッタクッ,ヤボッタクッ

while (<>) {
    chomp;
    my @l = split /,/, $_;
    print "1\t", $l[11], "\n";
}
