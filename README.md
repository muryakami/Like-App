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

- https://infinite-fortress-05948.herokuapp.com/

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

## Build the Application

``` bash
$ docker-compose build
```

## Create DataBase

``` bash
$ docker-compose run --rm web rails db:create
```

## Migration

``` bash
$ docker-compose run --rm web rails db:migrate
```

## Start the Application

``` bash
$ docker-compose up -d
```

## Stop the Application

``` bash
$ docker-compose down
```

# Deploy the Application to Heroku

## Log in Heroku Container Registry

``` bash
$ heroku container:login
```

## Create the Heroku Application

``` bash
$ heroku create
```

## Create the Heroku Application Add-ons

``` bash
$ heroku addons:create heroku-postgresql:hobby-dev
```

## Push the Docker Image

``` bash
$ heroku container:push web
```

## Release the Heroku Application

``` bash
$ heroku container:release web
```

## Migration

``` bash
$ heroku run rails db:migrate
```

## Access the Heroku Application

``` bash
$ heroku open
```

# Note

TODO:

# API Design

## Sessions

| Prefix | HTTP Verb | Path | Controller#Action | Used for |
|:---|:---|:---|:---|:---|
| login     | GET       | /login          | sessions#new     | 新しいセッションのページ (ログイン) |
| login     | POST      | /login          | sessions#create  | 新しいセッションの作成 (ログイン)   |
| logout    | DELETE    | /logout         | sessions#destroy | セッションの削除 (ログアウト)       |

## Users

| Prefix | HTTP Verb | Path | Controller#Action | Used for |
|:---|:---|:---|:---|:---|
| users     | GET       | /users          | users#index      | すべてのユーザーを一覧するページ    |
| user      | GET       | /users/:id      | users#show       | :id のユーザーを表示するページ      |
| signup    | GET       | /signup         | users#new        | 新規ユーザーを作成するページ        |
| edit_user | GET       | /users/:id/edit | users#edit       | :id のユーザーを編集するページ      |
| users     | POST      | /users          | users#create     | ユーザーを作成するアクション        |
| user      | PATCH/PUT | /users/:id      | users#update     | :id のユーザーを更新するアクション  |
| user      | DELETE    | /users/:id      | users#destroy    | :id のユーザーを削除するアクション  |

## Jobs

| Prefix | HTTP Verb | Path | Controller#Action | Used for |
|:---|:---|:---|:---|:---|
| jobs      | GET       | /jobs           | jobs#index       | すべての求人票を一覧するページ      |
| job       | GET       | /jobs/:id       | jobs#show        | :id の求人票を表示するページ        |
| new_job   | GET       | /jobs/new       | jobs#new         | 新規求人票を作成するページ          |
| edit_job  | GET       | /jobs/:id/edit  | jobs#edit        | :id の求人票を編集するページ        |
| jobs      | POST      | /jobs           | jobs#create      | 求人票を作成するアクション          |
| job       | PATCH/PUT | /jobs/:id       | jobs#update      | :id の求人票を更新するアクション    |
| job       | DELETE    | /jobs/:id       | jobs#destroy     | :id の求人票を削除するアクション    |

## Likes

| Prefix | HTTP Verb | Path | Controller#Action | Used for |
|:---|:---|:---|:---|:---|
| likes     | POST      | /likes          | likes#create     | いいねを作成するアクション          |
| like      | PATCH/PUT | /likes/:id      | likes#update     | :id のいいねを更新するアクション    |
| like      | DELETE    | /likes/:id      | likes#destroy    | :id のいいねを削除するアクション    |

# Database Design

![prototype](https://user-images.githubusercontent.com/32145722/76881314-4d67a580-68bc-11ea-8d0f-0abb9d3053c4.png)

# Author

[muryakami](https://github.com/muryakami)

# License

[MIT license](https://en.wikipedia.org/wiki/MIT_License).
