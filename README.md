# PandaHome - LXB api server

This is the api server for lxb mobile and web application


## Get started

You may need to install **Homebrew**, **rvm**, **postgresql**, **redis** before starting deploy the app to your mac.
Start with following steps under **Repo Directory**, skip the steps you already done. 


### Install Homebrew

run ```brew``` in your terminal
Firstly, check if brew in installed

```
$ brew
-bash: brew: command not found
```

If so, run following command
```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
It may ask your mac password during the installation


### Install Postgresql & Redis

**Postgresql**
```
$ brew install postgresql
```
**Redis**
```
$ brew install redis
```

After install successfully, follow the instruction on the build notes to start/stop mannually or automatically when login.
Use **brew services** might be a easier way to manage **postgresql** and **redis**
```
$ brew services list
$ brew services restart postgresql
```


### Install RVM

```
$ \curl -L https://get.rvm.io | bash -s stable
```

If already installed, try to update to the lastest version
```
$ rvm get stable --autolibs=enable
```
Then close and repoen the terminal to refresh the environment or simply run
```
source ~/.rvm/scripts/rvm
```


### Install Ruby

Panda Home use ruby 2.3.1, run
```
$ rvm install ruby-2.3.1
```

Check the version of ruby
```
$ ruby -v
ruby 2.3.1..
```


### Setup rvm for panda home

1. Set up rvm for current repo
```
$ rvm gemset use ruby-2.3.1@pandaHome --create
```

2. Set up ruby version and gemset for repo
```
$ rvm --create --ruby-version ruby-2.3.1@pandaHome
```


### Install rails 
```
$ gem install rails
```
Check the version of rails. (We are using rails 5.0.0 now)
```
$ rails -v
Rails 5.0.0
```


### Pull from github and create db
```
$ git pull origin master
Already up-to-date.
```
If code is ready, then create db and make migration
```
$ rake db:create db:migrate
```
Now you are ready to go!!! Enjoy, cheers!! :octocat:

### API Sample
```
http://localhost:3000/api/namespace/sample
```
