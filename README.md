
##  Requirements

NodeJS 12.16.3 (+ ExpressJS 4.16.3), npm 6.14.4 and MySQL 5.7.14.


## Prerequisites

In order to use the ExpressJS program it is highly necessary to have an _internet connection_ and install:

    - NodeJS v12.16+ (includes npm v6.14+)
    - MySQL v5.7+

i) Installing NodeJS v12.16+
It is possible that NodeJS has been already installed, to check use the following <br />
code in the command line:

    $ node --version
    [v12.16.3]

    If errors occured or NodeJS has not yet been installed please visit their
    website http://nodejs.org/en/download/ and follow the instructions there.

    1) Installing npm v6.14+
      npm comes bundled with a successful NodeJS installation,
      to check use the following code in the command line:

      $ npm --version
      [v6.14.4]

ii) Installing MySQL v5.7+

    In order to install the MySQL server on Windows please follow
    the instructions on their website http://dev.mysql.com/downloads/windows/.

    It is very important to run the file *./db/db.sql* on the server after the
    installation is complete.



## Running locally

Before starting please import `db/app.sql`.

Set  your MySQL credentials in .env file.

In order to link all npm dependencies:

```
> npm i

```

In order to start the NodeJS server, execute:

```
> npm start
```

Then opening the (default) website on **Google Chrome**(\*):<br />
[localhost:3000](http://localhost:3000)

