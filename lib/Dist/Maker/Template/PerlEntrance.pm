package Dist::Maker::Template::PerlEntrance;

use 5.008005;

our $VERSION = "0.01";

use Mouse;
use MouseX::StrictConstructor;
use utf8;

extends 'Dist::Maker::Base';
with    'Dist::Maker::Template';

sub distribution {
    return <<'DIST';
@@ zusaar.txt
<: $event_name :>
<: $url :>
<: $capacity :>
<: $payment :>

●Perl入学式って?
｢プログラミングに興味があるけど, ちょっと難しそう...｣という貴方!

｢他の言語使いだけど, ちょっとPerlも使ってみよっかな?｣という貴方!

｢仕事や研究でPerlを使い始めたけど, 全然自信がないなー...｣という貴方!

プログラミング未経験者からPerl初心者を対象としたワークショップ｢Perl入学式｣で, 一緒にPerlで学びましょう!
プログラミングのプの字も知らないあなたでも大丈夫, 共にプログラミングの楽しさを体感しましょう!

●どんなことをするの?
Perl入学式は2ヶ月に1回(偶数月ごと), 4月から来年2月までの計6回開催する予定です.
最終的には｢Perlを使って簡単なWebサービスを作り上げる(例: twitter風一行掲示板)こと｣を目標にしています.

ただし, 目標を達成するために基礎をおろそかにする, ということは絶対にしません.
プログラミング未経験者の方でもしっかり理解できるよう, 基礎から一歩ずつ進めていきます.

<: $description :>

●開催日・開催時間
<: $date :>
場所: <: $place :> (<: $place_url :>)
住所: <: $address :> (<: $map_url :>)

●会場について
<: $place_info :>

●参加費
<: $payment :>

●参加条件
基礎的なパソコンの操作(クリックやドラッグといったマウスの操作, キーボードでの文字入力, コピー･ペーストといったファイルの操作など)ができる方なら, プログラミング経験やPCに関する知識の有無は一切問いません.
ただし｢Perl入学式｣では, 毎回ご自身のPCを使って実際に手を動かしながらPerlを学んでいこうと考えていますので, 毎回必ずご自身のノートPCの持参をお願い致します.

また, 今回から参加される方, または前回参加されなかった方は, 前回までの資料(http://perl-entrance.org/2013/handout.html)を参考に, 事前の予習をお願い致します.

<: $terms :>

●問い合わせ
ご質問などありましたら, 本記事のコメント, Facebookページ, Twitterなどでお気軽にお問い合わせ下さい.

ハッシュタグ : #Perl入学式 <: $hash_tag :>

●最後に...
プログラミングって面白そうだな! 興味あるな! と思った貴方.
Perl入学式をきっかけにして, プログラミングという大海原に飛び出してみませんか!?

Perl入学式で, その第一歩を踏み出しましょう. 皆さんのご参加を, お待ちしております!

●講師 & サポーター
講師:
<: $teacher :>

サポーター:
<: $supporter :>


DIST
}

no Mouse;
__PACKAGE__->meta->make_immutable();

1;
__END__

=encoding utf-8

=head1 NAME

Dist::Maker::Template::PerlEntrance - Template for Perl Entrance

=head1 SYNOPSIS

    $ dim --config=template/config.pl init Event PerlEntrance

=head1 LICENSE

Copyright (C) Perl Entrance.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

bool_fool

papix E<lt>mail@papix.netE<gt>

=cut

