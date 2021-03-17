# README

# RosterMonster (backend)

RosterMonster is a fantasy basketball supplemental roster tracking tool with sortable player stats, projected stats, and lineup optimization.

## Installation

Ruby version: 2.6.1

Run bundle install to install all Ruby gems and dependencies.

```zsh
bundle install
```

Run rails db:create to set up database. This app uses Postgresql for the database.

```zsh
rails db:create
```

Run rails db:migrate to create tables and migrate them to the database.

```zsh
rails db:migrate
```

Run rails db:seed to seed the database with the data necessary to run the app.

```zsh
rails db:seed
```

## Usage

To run the backend, run rails s. (Make sure the backend is running on a different port than the frontend)

```zsh
rails s
```

## Authors and acknowledgment

NBA statistics and data supplied by Sportsdata.io (https://sportsdata.io/developers/getting-started)

Built with passion by Ori Markowitz 2021
