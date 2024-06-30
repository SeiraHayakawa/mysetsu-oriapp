# 自分だけの取扱説明書作成アプリ  ～MYSETSU～


### アプリケーション概要  
MYSETSUは、フォームをユーザーの取扱説明書を作成し、管理するためのアプリケーションです。自分自身や他のユーザーの性格、生活習慣、仕事、学校、趣味、パートナーについての情報を一箇所で管理し、自己理解の手助けができます。


### デプロイ済みのURL  
（https://mysetsu-oriapp.onrender.com）


### テスト用アカウント  
ログインID: abc@ella.com  
パスワード: abc123  
Basic認証ID: admin  
Basic認証パスワード: 2222  


### 利用方法  
1. ユーザー登録を行います。  
2. プロフィール情報を入力します。  
3. 生活習慣、仕事、学校、趣味、パートナーについての情報を入力したい項目だけ入力します。  
4. プレビュー画面で取扱説明書を確認します。  
5.共有ボタンを押して取扱説明書をコピーし、他の人と共有します。  


### アプリケーションを作成した背景  
現代の多忙な生活の中で、自分自身や他人の性格や習慣を理解することは難しいです。このアプリケーションは、自分や他人の特徴を簡単に記録することでより自己理解を促進することを目的としています。  
また共有することで、より良い円滑なコミュニケーションができます。  
SNSのプロフィールや名刺、入学オリエンテーション、合コン等、ビジネスの場面や個人使用など幅広い場面で活用できます。


### 実装した機能についての画像やGIFおよびその説明  
・プロフィール作成機能  
ユーザーが基本情報を入力して保存できます。

・生活習慣管理機能  
ユーザーが生活習慣についての情報を入力して管理できます。

・仕事の取扱説明機能  
ユーザーが仕事に関する情報を入力して管理できます。

・学校の取扱説明機能  
ユーザーが学校に関する情報を入力して管理できます。

・パートナーの取扱説明機能  
ユーザーがパートナーとの関係に関する情報を入力して管理できます。

・趣味の取扱説明機能  
ユーザーが趣味に関する情報を入力して管理できます。

・プレビューと共有機能  
入力した情報を取扱説明書としてプレビュー表示します。



### 実装予定の機能  
・共有ボタンで誰でも見られる機能  
・バリテーションの追加  
・モバイルアプリ版の開発  
・カスタマイズ可能な取扱説明書の項目の追加  
  


### データベース設計  
[![Image from Gyazo](https://i.gyazo.com/b02f012433635963db59330994405a5e.png)](https://gyazo.com/b02f012433635963db59330994405a5e)


### 開発環境  
言語: Ruby on Rails  
データベース: PostgreSQL  
認証: Devise  
フロントエンド: Turbo Frames, Stimulus  