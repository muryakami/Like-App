# Like-App

"Like-App" は [muryakami](https://github.com/muryakami) のコーディングスキルを確認するために用意した Portfolio リポジトリです

## Objective

[muryakami](https://github.com/muryakami) のコーディングスキルの確認

## Assignment

[Requirements]()

## Branch Operation

| ブランチ名 | 説明 |
|:-------|:-------|
| master | デプロイに使用するブランチ。開発した全ての機能が統合されている。 |
| feature/* | アプリケーション開発に使用するブランチ。機能ごとに作成し master に marge する。 |

# Demo

- https://vast-everglades-51104.herokuapp.com/

## Images

TODO:

# Features

- Rails 6.0.2.1 on Docker
- Docker images based on Alpine Linux
- Deploy the Application to Heroku with Docker

# Requirement

- Docker 19.03.5

# Installation

``` bash
$ brew cask install docker
$ open /Applications/Docker.app
```

# Usage

## Setup the Application

``` bash
$ git clone git@github.com:muryakami/Like-App.git
$ cd Like-App
```

## Start the Application

``` bash
$ docker-compose up -d
```

## Stop the Application

``` bash
$ docker-compose down
```

## Deploy the Application to Heroku

``` bash
$ heroku container:push web
$ heroku container:release web
```

## View the Application

``` bash
$ heroku open
```

# Note

TODO:

# API Design

| Prefix | HTTP Verb | Path | Controller#Action | Used for |
|:---|:---|:---|:---|:---|
| login     | GET       | /login          | sessions#new     | 新しいセッションのページ (ログイン) |
| login     | POST      | /login          | sessions#create  | 新しいセッションの作成 (ログイン)   |
| logout    | DELETE    | /logout         | sessions#destroy | セッションの削除 (ログアウト)       |
| signup    | GET       | /signup         | users#new        | 新規ユーザーを作成するページ        |
| users     | GET       | /users          | users#index      | すべてのユーザーを一覧するページ    |
| user      | GET       | /users/:id      | users#show       | :id のユーザーを表示するページ      |
| edit_user | GET       | /users/:id/edit | users#edit       | :id のユーザーを編集するページ      |
| users     | POST      | /users          | users#create     | ユーザーを作成するアクション        |
| user      | PATCH/PUT | /users/:id      | users#update     | :id のユーザーを更新するアクション  |
| user      | DELETE    | /users/:id      | users#destroy    | :id のユーザーを削除するアクション  |

# Database Design

![prototype](https://user-images.githubusercontent.com/32145722/75718886-166b8e80-5d17-11ea-857a-65dee2e378e4.png)

# Author

[muryakami](https://github.com/muryakami)

# License

[MIT license](https://en.wikipedia.org/wiki/MIT_License).
