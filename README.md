# ChairityList


## Setup

To install this application on your machine, please follow these instructions.

Clone this repository down onto your machine:

```sh
$ git clone https://github.com/sofiadray/ChairityList.git

## Set up the database
```sh
$ rake db:setup
$ rake db:migrate

## Set up Devise
```sh
$ rails g devise:install

## Seeds List
```sh
This repo comes with a seeds list pre-populated. Please uncomment the section you need to seed and run
$ rake db:seed
to complete.

When done, comment back out the appropriate data on the seeds file.