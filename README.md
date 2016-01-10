# ChairityList


## Setup

To install this application on your machine, please follow these instructions.

Clone this repository down onto your machine:

```sh
$ git clone https://github.com/sofiadray/ChairityList.git
```

## Set up the database
```sh
$ rake db:setup
$ rake db:migrate
```

## Set up Devise
```sh
$ rails g devise:install
```

## Seeds List
```sh
This repo comes with a seeds list pre-populated. Please uncomment the section you need to seed and run
$ rake db:seed
to complete.

When done, comment back out the appropriate data on the seeds file.
```

## Sunspot Searching
In order to correctly run the Solr Search environment you must first make sure you have downloaded
JRE and JDK

JRE: http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html
JDK: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

You may also need to tell your terminal how to find the JDK.

In terminal
```sh
nano .bash_profile
```
Add the following:
```sh
export JAVA_HOME=$(/usr/libexec/java_home)
```
type Ctl+X and follow the prompts to save and exit

type
```sh
source .bash_profile
```

This should now make terminal recognize the addition.

## Starting/Stopping the Solr Server
```sh
rake sunspot:solr:start
```

```sh
rake sunspot:solr:stop
```

## Don't forget to Re-index 
If you make any changes to the Charity or Post models, you may need to reindex the search tool, in terminal, you don't need to stop the solr server
```sh
rake sunspot:reindex
```
