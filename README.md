# [MBTIデータベース](https://www.mbti-database.com/)
[![Image from Gyazo](https://i.gyazo.com/658c850fedea3db773a8125bef23ca9c.png)](https://gyazo.com/658c850fedea3db773a8125bef23ca9c)

[MBTIデータベース](https://www.mbti-database.com/)は、MBTIタイプに紐づけて好きな作品を共有するWebアプリです。

投稿された作品はグラフとしてデータベース化され、フィルタリングすることで気になるMBTIタイプの好きな作品を見ることができます。

[MBTIとは？](https://ja.wikipedia.org/wiki/MBTI)

## サービスへの想い
MBTIタイプごとの好みについて、インターネット上で語られることが多く見られたのですが、これらは個人の主観に基づいていることが多く、信頼性に疑問を感じていました。

同時に、私の中に自分の好きな作品を気軽に共有できる場を提供したいという思いもあり、MBTIタイプに紐づけて作品を共有することで、単なる作品の共有にとどまらず、MBTIタイプごとの好みを考える手助けになるのではないかと考え、[MBTIデータベース](https://www.mbti-database.com/)の構想に至りました。

## メイン機能の使い方
| MBTIタイプの登録 | 好きな作品の投稿とX共有 | データベースの閲覧 |
|------------------|------------------------|-------------------|
| [![Image from Gyazo](https://i.gyazo.com/e652d874443276e429eaf289504f3f58.png)](https://gyazo.com/e652d874443276e429eaf289504f3f58) | [![Image from Gyazo](https://i.gyazo.com/9258e5671cf51f19bf3654ee50b98d4e.jpg)](https://gyazo.com/9258e5671cf51f19bf3654ee50b98d4e) | [![Image from Gyazo](https://i.gyazo.com/d7eb61c06d3a03a6884a5c96a212cd9d.png)](https://gyazo.com/d7eb61c06d3a03a6884a5c96a212cd9d) |
| サインアップ後、モーダルが出てくるので、MBTIタイプを登録してください。 | 1~4つの好きなアニメと音楽アーティストのイメージを投稿できます。<br>また、XにMBTIタイプと共に好きな作品を共有することにより、簡易的な自己紹介ができます。 | グラフで表されたデータベースをフィルタリングして、気になるMBTIタイプの好きな作品を見ることができます。

## 使用技術一覧
| カテゴリ | 使用技術 | バージョン |
|----------|----------|------------|
| フロントエンド | React / React Router | 18.2.0 / 7.0.0 |
| バックエンド | Ruby / Ruby on Rails (APIモード) | 3.2.2 / 7.0.8 |
| CSSフレームワーク | Tailwind CSS / MUI | 3.3.6 / 5.15.5 |
| API | Anilist API / Spotify Web API ||
| 認証 | Clerk ||
| 画像加工 | Cloudinary / imgkit ||
| グラフ | react-chartjs-2 ||
| インフラ | Vercel (フロントエンド) / Render (バックエンド) ||
| データベース | Supabase ||

## ER図
[![Image from Gyazo](https://i.gyazo.com/c0357a39b9e15fe53b9d5da5c98f932b.png)](https://gyazo.com/c0357a39b9e15fe53b9d5da5c98f932b)
