# 16type Favorite Database  
## サービス概要  
MBTIタイプ診断をしたユーザーが自分の好きな作品を媒体ごとに投稿することにより、MBTIタイプごとの好みを収集するDBアプリです。  
また自分が好きな複数の作品のサムネイルを加工した画像をXに共有することにより、自分の趣味嗜好を簡単に共有することができます。

[MBTIとは？](https://ja.wikipedia.org/wiki/MBTI)  

## このサービスへの思い・作りたい理由  
MBTIタイプごとの好みを収集したDBがあれば、よりMBTIに対する理解が深まると思ったからです。
XでMBTIに興味がある人たちのポストを見ていると、私と同じくMBTIタイプごとの好みに興味を持つ人は多くいるのですが、そのようなDBは存在せず、またそのDBを作成するのに適したWebアプリケーションも見当たりませんでした。

また私自身SNSでの自己開示があまり得意ではなく、Xに自分の好きな作品を共有することで、簡易的な自己紹介を簡単にできるサービスがあればいいなと思ったからです。

## ユーザー層について   
- MBTI診断サイトでタイプ診断をしたことがあり、少しでもMBTIに興味があるユーザー
- 診断サイトでの診断のみにとどまらず、MBTIに関する情報を集め、自分で自認タイプを決定したり、MBTIに対する理解を深めようとしているユーザー 
- Xで簡単に自分の趣味嗜好を共有したいと考えているユーザー
    
## サービスの利用イメージ  
- ユーザーはコンテンツ投稿画面から、それぞれ3つの媒体の自分が好きな1~4つの作品を選び、その作品のサムネイルを組み合わせ生成した画像コンテンツをアプリ内に投稿・Xに共有できる。  
    - 3つの媒体  
        今のところ"アニメ"・"音楽"・"ゲーム"を考えています。  
        理由は私が好きな作品の媒体であり、メジャーな媒体でもあるからです。  
- DB詳細画面ではユーザーが媒体ごとに選んだ自分の好きな作品をもとに生成されたDBを閲覧できる。  
- DB詳細画面はMBTI16タイプを知覚機能（Ni/Ne/Si/Se）ごとのグループで分け、その4つのグループごとのDBを閲覧でき、コメントを投稿・いいねすることができる。  
    - 知覚機能でグループを分ける理由  
        - 初期の少ないユーザー数でもDBを形にする工夫の1つとして、MBTIの16タイプをグルーピングしようと思ったから。  
        - MBTIに触れていく中で知覚機能の違いがタイプ間で最も大きな違いだと感じ、逆に言えば知覚機能が共通していれば、似たタイプとしてグルーピングできると思ったから。 

        - ex.
        知覚機能（Ni/Ne/Si/Se）で分けられた4つのグループ  
            - Se（ESFP/ESTP/ISFP/ISTP）  
            - Si（ESFJ/ESTJ/ISFJ/ISTJ）  
            - Ne（ENFP/ENTP/INFP/INTP）  
            - Ni（ENFJ/ENTJ/INFJ/INTJ）  
- 投稿一覧では他のユーザーの投稿した画像コンテンツをいいねできる。  
またユーザーのアイコンをクリックすると、そのユーザーのプロフィールに飛び、投稿一覧といいね一覧を閲覧できる。  

## ユーザーの獲得について  
- Xでの宣伝  
- Qiita記事の作成  

## サービスの差別化ポイント・推しポイント  
### 差別化ポイント  
"Personality Database"というMBTIに関するDBアプリがあるのですが、そのアプリで扱っているDBは有名人や架空のキャラクターのMBTIタイプをユーザーが予想・投稿し、多数決で決めたその人物やキャラクターのMBTIタイプなので、私の考えているMBTIタイプごとの個人の好みを収集するDBとは差別化できていると思います。  

### 推しポイント  
MBTIタイプごとの好みを収集したDBをCGMという背景情報がわかりやすい形で公開することで、MBTIに対する理解を深めたり、考察する助けにできるところです。  
MBTIは"最終的には自分でタイプを決める必要がある主観的な心理検査"なので、ユーザーの誤診によりDBや統計が意味をなさないことが問題視されていますが、ユーザーの診断方法をプロフィールに記載し、その診断方法をもとにDBの母集団をフィルタリングする機能を実装することで、少しでも誤診を考慮した上でDBを見やすくできるようにしました。  
- ユーザーの診断方法  
そのユーザーのタイプ診断が  
    - 診断サイトのみを通じて決定したものなのか？（[16personalities](https://www.16personalities.com/ja)）
    - 能動的にMBTIに関する情報を集めて、自らの判断で決定したものなのか？（自認タイプ）  
    - 公式のセッションを通じて決定したものなのか？（[公式](https://www.mbti.or.jp/)タイプ）  

- ex.
フィルタリング機能で  
    - 公式タイプに絞り、公式を通して診断されたものだからこのデータは信用できる  
    - 16personalities・自認タイプ・公式タイプの全てを選択し、このデータは誤診を考慮して見なければいけないな  
など。

## 機能候補  
### MVPリリース  
- トップページ  
- Googleログイン   
- プロフィール  
    - 診断方法  
        - 16Personalities  
        - 自認タイプ  
        - 公式タイプ
    - 自分の画像コンテンツ投稿一覧  
    - いいね欄  
- プロフィール編集  
- 通知  
    - 自分の画像コンテンツ投稿にいいねがついたとき  
    - 自分のコメントにいいね・返信がついたとき  
- 画像コンテンツ投稿  
    - 検索機能（オートコンプリート）と画像加工・合成  
        ３つの媒体（アニメ・音楽・ゲーム）ごとにAPIを使い自分の選んだ1~4つの作品のサムネイルを取得し、そのサムネイルを組み合わせた画像を生成  
    - X共有機能  
- 画像コンテンツ投稿一覧表示   
    - 画像コンテンツ詳細
    - いいね機能 
- DB詳細  
    - DB（棒グラフで表示）  
        - 少ないユーザー数でもDBの傾向を見て取れるようにするための工夫として、人と作品を大きなグループでまとめる  
            - 縦軸（人数）  
            知覚機能でグルーピングされたグループの中でタイプを複数選択できるようにし、初めは全てのタイプにチェックを入れておく 

                - ex.
                Seグループの場合  
                初めはESFP/ESTP/ISFP/ISTPの全てのタイプが選択されている  
                →ESTPとISFPのみのDBを表示したければ、ESTPとISFPのみを選択  

                また診断方法は"16personalities"・"自認タイプ"・"公式タイプ"から複数選択できるようにし、初めは全ての選択肢にチェックを入れておく  

            - 横軸（作品）  
            媒体ごとに投票された"作品名"またはジャンル名"を投稿数順に表示 
            "作品"ごとに表示するか、"ジャンル"ごとに表示するか選べるようにする 

                - ジャンルex.  
                    - ファンタジー  
                    - SF  
                    - アクション  
                    - ミステリーetc.  

    - コメント欄  
        - コメント機能  
        - いいね機能  

### 本リリース  
- レスポンシブデザイン  
- レコメンド（コンテンツベースフィルタリング）  
    ユーザーが選んだ作品をもとに似た要素を持つ作品をおすすめする  
- LINEログイン→LINE通知
    - 自分のが画像コンテンツ投稿にいいねがついたとき  
    - 自分のコメントにいいね・返信がついたとき  

## 機能の実装方針予定  
- フロントエンド
調査中  
- バックエンド  
Ruby on Rails  
- API・gem  
調査中  
- インフラ  
Heroku  

