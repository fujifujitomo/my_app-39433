## アプリケーション名
fam のーと

## アプリケーション概要
ペットの健康管理の為の記録を簡単に入力できます。

## URL※	デプロイ済みのURLを記載。デプロイが済んでいない場合は、デプロイが完了次第記載すること。
＊＊＊後日記載＊＊＊

# テスト用アカウント
追加実装にてログイン機能追加

## 利用方法
ペットがご飯を食べたら、アプリを起動させます。
記録の画面が出るのでご飯アイコンを選択しOKボタンを押す。
すると時間とともに記録を残すことができます。
日ごとのページで記録を確認できます。

## アプリケーションを作成した背景	このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記載。
以前はノートに記録をしていたが、手間に思うようになり、
もっと簡単に記録できたらいいなと思ったのがきっかけです。
ペットの健康管理のために”簡単”に記録を残したい人へ、アイコンを選択してＯＫボタンを押すだけで記録が残せます。

## 洗い出した要件	要件定義をまとめたスプレッドシートのリンクを記載。
https://docs.google.com/spreadsheets/d/1EpA4BYFRi_oFGpfpzITeKeyPO1lMw-ZRQnQL2Yrvpvg/edit#gid=0

## 実装した機能についての画像やGIFおよびその説明※	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。
＊＊＊後日記載＊＊＊

## 実装予定の機能	洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記載。
・ユーザー情報、ペット情報の編集機能
・ペットを共有するための機能（URLの表示）
・ログイン、ログアウト機能
・ペット追加機能

## データベース設計	ER図を添付。
[![Image from Gyazo](https://i.gyazo.com/7ea5ffb3a332bc89a5fe527d35377b5c.png)](https://gyazo.com/7ea5ffb3a332bc89a5fe527d35377b5c)

## 画面遷移図	画面遷移図を添付。
[![Image from Gyazo](https://i.gyazo.com/2a3ab66bac4b4014d2b7f9943db363ad.png)](https://gyazo.com/2a3ab66bac4b4014d2b7f9943db363ad)

## 開発環境	使用した言語・サービスを記載。
Ruby/Ruby on Rails/MySQL/Github

## ローカルでの動作方法※	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記載。
＊＊＊後日記載＊＊＊

## 工夫したポイント※	制作背景・使用技術・開発方法・タスク管理など、企業へＰＲしたい事柄を記載。
＊＊＊後日記載＊＊＊






# テーブル設計

## users テーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association
- has_many :pets

## pets テーブル
| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| name     | string  | null: false |
| gender   | integer |             |
| kind     | string  |             |
| birthday | date    |             |

### Association
- has_many :writes
- belongs_to :user

## writes テーブル
| Column    | Type    | Options  |
| --------- | ------- | -------- |
| icon      | integer |          |
| input_dat | date    |          |
| memo      | string  |          |
| schedule  | string  |          |

### Association
- belongs_to :pet