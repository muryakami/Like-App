# Like-App

"Like-App" は [muryakami](https://github.com/muryakami) のコーディングスキルを確認するために用意したリポジトリです

いわゆるポートフォリオです

## Objective

[muryakami](https://github.com/muryakami) のコーディングスキルの確認

## Assignment

[URI]()

## Branch Operation

| ブランチ名 | 説明 |
|:-------|:-------|
| master | デプロイに使用するブランチ。開発した全ての機能が統合されている。 |
| feature/* | アプリケーション開発に使用するブランチ。機能ごとに作成し master に marge する。 |

# Demo

- https://vast-everglades-51104.herokuapp.com/

## Images

TODO:

## Web API

| HTTP Request | URI Pattern | Controller#Action | Usage |
|:---|:---|:---|:---|
| GET       | /users          | index   | すべてのユーザーを一覧するページ   |
| GET       | /users/:id      | show    | :id のユーザーを表示するページ     |
| GET       | /users/new      | new     | 新規ユーザーを作成するページ       |
| POST      | /users          | create  | ユーザーを作成するアクション       |
| GET       | /users/:id/edit | edit    | :id のユーザーを編集するページ     |
| PATCH/PUT | /users/:id      | update  | :id のユーザーを更新するアクション |
| DELETE    | /users/:id      | destroy | :id のユーザーを削除するアクション |

## Database Design

![prototype](https://user-images.githubusercontent.com/32145722/75615552-5a7c5900-5b88-11ea-943e-a7639c18b967.png)

# Features

- Rails 6.0.2.1 on Docker
- Docker images based on Alpine Linux
- Deploy to Heroku using Docker

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

# Author

[muryakami](https://github.com/muryakami)

# License

[MIT license](https://en.wikipedia.org/wiki/MIT_License).
