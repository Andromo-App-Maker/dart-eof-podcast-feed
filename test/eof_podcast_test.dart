import 'dart:io';

import 'package:eof_podcast_feed/eof_podcast_feed.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

void main() {
  test('test roundup.xml', () async {
    final XmlDocument _docXML = XmlDocument.parse(await File('./test/roundup.xml').readAsString());
    final feed = Podcast.fromXml(_docXML);
    expect(feed.title, '伊藤洋一のRound Up World Now!');
    expect(feed.description,
        '伊藤洋一氏が日本だけでなく世界中で起きた1週間の経済・社会・政治関連の出来事、指標、トピックスなどを分かりやすく解説。刻々と変化していく現代をグローバルに見渡すことのできる30分です。');
    expect(feed.podcastCoverUrl, 'http://www.radionikkei.jp/archives/program/roundup/podcast.jpg');
    expect(feed.language, 'ja');
    expect(feed.category, 'Business');
    expect(feed.explicit, false);
    expect(feed.owner, 'webmaster@radionikkei.jp');
    expect(feed.url, 'http://www.radionikkei.jp/roundup/');
    expect(feed.author, 'ラジオNIKKEI');
    expect(feed.copyright, null);
    expect(feed.episodes.length, 5);
    expect(feed.episodes.first.iTunesImageUrl, null);
    expect(
        feed.episodes.first.enclosure.url, 'http://podcasting.radionikkei.jp/podcasting/roundup/roundup-201127.mp3');
    expect(feed.episodes.first.enclosure.length, '');
    expect(feed.episodes.first.enclosure.type, 'audio/mpeg');
  });
  test('test hiromaeda.xml', () async {
    final XmlDocument _docXML = XmlDocument.parse(await File('./test/hiromaeda.xml').readAsString());
    final feed = Podcast.fromXml(_docXML);
    expect(feed.title, '前田ヒロ Startup Podcast');
    expect(feed.description, 'SaaSスタートアップに特化して投資と支援をする「ALL STAR SAAS FUND」のマネージングパートナー');
    expect(feed.podcastCoverUrl,
        'http://hiromaeda.com/wp-content/uploads/powerpress/Screenshot_2020-06-16_at_10.09.50_AM.jpg');
    expect(feed.language, 'ja');
    expect(feed.category, 'Business');
    expect(feed.explicit, false);
    expect(feed.owner, 'heromaeda@gmail.com');
    expect(feed.url, 'https://hiromaeda.com');
    expect(feed.author, '前田ヒロ Startup Podcast');
    expect(feed.copyright, null);
    expect(feed.episodes.length, 19);
    expect(feed.episodes.first.iTunesImageUrl, null);
    expect(feed.episodes.first.enclosure.url,
        'https://media.blubrry.com/hiromaeda/content.blubrry.com/hiromaeda/20_FINAL_Episode_20-Mukai-san_mixdown.mp3');
    expect(feed.episodes.first.enclosure.length, '73936531');
    expect(feed.episodes.first.enclosure.type, 'audio/mpeg');
  });
}
