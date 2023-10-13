# Terraform Beginner Bootcamp 2023 - Week 2

## TOC - Table Of Contents
- [Terraform Beginner Bootcamp 2023 - Week 2](#terraform-beginner-bootcamp-2023---week-2)
  * [Working with Ruby](#working-with-ruby)
    + [Bundler](#bundler)
      - [Install Gems](#install-gems)
      - [Executing ruby scripts in the context of bundler](#executing-ruby-scripts-in-the-context-of-bundler)
    + [Sinatra](#sinatra)
  * [Terratowns Mock Server](#terratowns-mock-server)
    + [Running the web server](#running-the-web-server)
  * [CRUD](#crud)
  * [Error Faced](#error-faced)
  * [End Results of Two Towns](#end-results-of-two-towns)
    + [Gamers Grotto](#gamers-grotto)
    + [Cooker Cove](#cooker-cove)


## Working with Ruby

### Bundler

Bundler is a package manager for runy.
It is the primary way to install ruby packages (known as gems) for ruby.

#### Install Gems

You need to create a Gemfile and define your gems in that file.

```rb
source "https://rubygems.org"

gem 'sinatra'
gem 'rake'
gem 'pry'
gem 'puma'
gem 'activerecord'
```

Then you need to run the `bundle install` command

This will install the gems on the system globally (unlike nodejs which install packages in place in a folder called node_modules)

A Gemfile.lock will be created to lock down the gem versions used in this project.

#### Executing ruby scripts in the context of bundler

We have to use `bundle exec` to tell future ruby scripts to use the gems we installed. This is the way we set context.

### Sinatra

Sinatra is a micro web-framework for ruby to build web-apps.

Its great for mock or development servers or for very simple projects.

You can create a web-server in a single file.

https://sinatrarb.com/

## Terratowns Mock Server

### Running the web server

We can run the web server by executing the following commands:

```rb
bundle install
bundle exec ruby server.rb
```

All of the code for our server is stored in the `server.rb` file.

## CRUD

Terraform Provider resources utilize CRUD.

CRUD stands for Create, Read Update, and Delete

https://en.wikipedia.org/wiki/Create,_read,_update_and_delete

## Error Faced

![](https://github.com/krunalijain/terraform-beginner-bootcamp-2023/blob/main/assets/Error%20-%20required%20token%20not%20found.JPG)

After finishing my Week2 all videos - 2.6.0, when I tried to run `tf init` I was getting this `Required token not found` error. This occurred after setting Workspace to **Remote** and Project to **Local** in TF Cloud. When I uncommentted off the `cloud { }`code block from `main.tf`file, I faced this error. So for now have commentted off that code block in `main.tf` file and it is wokring. Not sure what's the issue exactly, but will figure out soon. As for this bootcamp it is not mandatory but in real life this needs to be considered responsibly. 

The code block from `main.tf` file I commentted off:
```
#cloud {
  #  organization = "TF-Bootcamp-2023"
  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
``` 

## End Results of Two Towns

### Gamers Grotto

![Gamer's Grotto](https://github.com/krunalijain/terraform-beginner-bootcamp-2023/blob/main/public/minimilitia/assets/Gamers%20Grotto.JPG)

![minimilitia](https://github.com/krunalijain/terraform-beginner-bootcamp-2023/blob/main/public/minimilitia/assets/minimiltia.JPG)

### Cooker Cove

![Cooker Cove](https://github.com/krunalijain/terraform-beginner-bootcamp-2023/blob/main/public/suttarphini/assets/Cooker%20Cove.JPG)

![Suttarphini](https://github.com/krunalijain/terraform-beginner-bootcamp-2023/blob/main/public/suttarphini/assets/suttarphini.JPG)
