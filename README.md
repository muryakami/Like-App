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

| API | 説明 |
|:---|:---|
| /users/* | ユーザ に関する操作 |

## Database Design

TODO:

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
