# Database setup instructions
Here we are going to follow the steps to configure our postgres database
to work with our Rails application.

### 1. Make sure postgres is already installed on your machine.
To install postgres on linux:

    $ sudo apt install postgresql postgresql-contrib

To find the Postgres server version from the shell command line, simply issue a postgres command with the -V flag (for version):

    $ postgres -V
    postgres (PostgreSQL) 9.3.10

In the event that the postgres command is not found, you may need to locate the directory of the utility. This can be done by issuing the locate bin/postgres command:

    $ locate bin/postgres
    /usr/lib/postgresql/9.3/bin/postgres
Now with the direct path to the postgres utility, you can call it with the -V flag as illustrated above:

    $ /usr/lib/postgresql/9.3/bin/postgres -V
    postgres (PostgreSQL) 9.3.10

### 2. To configure your env variables and create you database in postgres you need to execute this command.

    export POSTGRES_USERNAME='youruser' && export POSTGRES_PASSWORD='yourpassword' && rails db:create
