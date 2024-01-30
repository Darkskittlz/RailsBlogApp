# README

### Tutorial Progress
- <a href="https://guides.rubyonrails.org/getting_started.html#resourceful-routing">7.2 Resourceful Routing (48% done)</a>




### Ruby version
`3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-linux])`

### Configuration
```
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: dark
  database: DarkDB
  password: 8980
  host: localhost
  port: 5432

development:
  <<: *default
  username: dark
  database: DarkDB
  password: 8980
  host: localhost
  port: 5432

test:
  <<: *default
  database: DarkDB_Test
  username: dark
  password: 8980
  host: localhost
  port: 5432
```
