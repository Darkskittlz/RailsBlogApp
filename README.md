# README

### Tutorial Progress
- <a href="https://guides.rubyonrails.org/getting_started.html#resourceful-routing"> Ruby on Rails Docs: 7.2 Resourceful Routing (48% done)</a>

Next Video in the series
- <a href="https://www.youtube.com/watch?v=lKUR4mu1M-U&list=PLm8ctt9NhMNV75T9WYIrA6m9I_uw7vS56&index=6&ab_channel=GoRails">Model View Controller Youtube </a>

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
  host: localhost
  port: 5432

development:
  <<: *default
  username: dark
  database: DarkDB
  host: localhost
  port: 5432

test:
  <<: *default
  database: DarkDB_Test
  username: dark
  host: localhost
  port: 5432
```

# Instructions
Below are a series of commands that need to be run in order before starting work on my project. Perhaps I will create an alias that runs the commands one after the other like `railsStart` from the command line. 

Alias | Command String
--- | ---
'railsStart` | `sudo service postgresql start && rails s`  

#### Run the below Commands in order

Command | Description
--- | ---
`sudo service postgresql start` | Rails won't run unless postgres is started first. Since I don't have systemctl installed in my linux distro I start the service with sudo service, rather than `systemctl start`
`rails s` | starts up rails server 
`bundle` | Goes through and installs all of the gems and their versions. Rails does this automatically when I start up a new app.
`bundle info __` | Get info on a specific gem
 
##### Once everything is setup I should be able to view my database tables in tablesPlus. 
