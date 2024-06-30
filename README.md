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


### アプリの主な挙動


### 実装した機能についての画像やGIFおよびその説明  
・最終的な取説完成後のプレビュー動画  
[![Image from Gyazo](https://i.gyazo.com/05a455517305708c7b2f0be2ae6854d9.gif)](https://gyazo.com/05a455517305708c7b2f0be2ae6854d9)  

・トップページ  
ログイン、新規会員登録前のページです。
[![Image from Gyazo](https://i.gyazo.com/3a6e7b5c4070337c6a18ad43e4419aff.gif)](https://gyazo.com/3a6e7b5c4070337c6a18ad43e4419aff)  

・ログインページ  
[![Image from Gyazo](https://i.gyazo.com/8fa667bfa2db4c33fb4170964a6e269c.gif)](https://gyazo.com/8fa667bfa2db4c33fb4170964a6e269c)  

・新規会員登録ページ  
[![Image from Gyazo](https://i.gyazo.com/b5792b772b8fce9a288435072f0f263e.gif)](https://gyazo.com/b5792b772b8fce9a288435072f0f263e)  

・ログイン後のトップページからプロフィールの取扱説明機能の遷移  
ユーザーが基本情報を入力して保存できます。  
[![Image from Gyazo](https://i.gyazo.com/098ad02ec6a94179cfd55bc89a98edb2.gif)](https://gyazo.com/098ad02ec6a94179cfd55bc89a98edb2)  
入力後は入力内容から編集機能も使用できます。  
[![Image from Gyazo](https://i.gyazo.com/417bb10062813b848b22f2dd73911e37.gif)](https://gyazo.com/417bb10062813b848b22f2dd73911e37)  
入力後は削除機能も使用できます。  
[![Image from Gyazo](https://i.gyazo.com/a0b8417b5363ed1baefe8b541ffef9a1.gif)](https://gyazo.com/a0b8417b5363ed1baefe8b541ffef9a1)  

・生活においての取扱説明機能    
プロフィールの取扱説明機能の遷移と同様にフォーム入力、入力内容のページ遷移、編集・削除機能があります。  
[![Image from Gyazo](https://i.gyazo.com/a0ca7fc405d6e743ddfc396aff83bb0d.gif)](https://gyazo.com/a0ca7fc405d6e743ddfc396aff83bb0d)  

・学校の取扱説明機能  
プロフィールの取扱説明機能の遷移と同様にフォーム入力、入力内容のページ遷移、編集・削除機能があります。  
[![Image from Gyazo](https://i.gyazo.com/b1277df08992f26e801d148147e7c05a.gif)](https://gyazo.com/b1277df08992f26e801d148147e7c05a)  

・パートナーとの関係についての取扱説明機能  
プロフィールの取扱説明機能の遷移と同様にフォーム入力、入力内容のページ遷移、編集・削除機能があります。  
[![Image from Gyazo](https://i.gyazo.com/62bc6941686c662b670e895a02e72ce3.gif)](https://gyazo.com/62bc6941686c662b670e895a02e72ce3)  

・仕事の取扱説明機能  
プロフィールの取扱説明機能の遷移と同様にフォーム入力、入力内容のページ遷移、編集・削除機能があります。  
[![Image from Gyazo](https://i.gyazo.com/356837f79ee39c738d4ff9ad861466e2.gif)](https://gyazo.com/356837f79ee39c738d4ff9ad861466e2)  

・趣味の取扱説明機能  
プロフィールの取扱説明機能の遷移と同様にフォーム入力、入力内容のページ遷移、編集・削除機能があります。 
[![Image from Gyazo](https://i.gyazo.com/334b0c11ae5abc48b0ac1736345b144f.gif)](https://gyazo.com/334b0c11ae5abc48b0ac1736345b144f)  

・プレビュー機能  
入力した情報を取扱説明書としてプレビュー表示します。入力していない項目は表示されないので、自分でカスタマイズできます。  
[![Image from Gyazo](https://i.gyazo.com/71e4e4944a42c3d01a36b7e3d5af6f32.gif)](https://gyazo.com/71e4e4944a42c3d01a36b7e3d5af6f32)  



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
