# Useful postgreSQL commands

## bash commands
| Command | Description |
| :------ | :---------- |
| `pg_ctl -D /usr/local/var/postgres start` | Start postgreSQL server |
| `pg_ctl -D /usr/local/var/postgres stop` | Stop postgreSQL server |
| `psql user` | Start the `psql` utility with user `user` (starts with default user if no user argument) |
| `postgres` | Execute the SQL server itself |
| `createuser user` | Create user `user` |
| `createdb database` | Create database `database` |
| `dropuser user` | Delete user `user` |
| `dropdb database` | Delete database `database` |
| `pg_restore -U user -d database_name path` | Load data into a database `database_name` from `path` with user `user` |

## psql commands
| Command | Description |
| :------ | :---------- |
| `\du` | List roles/users and their attributes |
| `\dt` | List tables in a database |
| `\db` | List table spaces |
| `\d table` | Show schema for table `table` |
| `\list` | List databases |
| `\connect database` | Connect to `database` |
| `\q` | Quit the `psql` prompt |
| `\password user` | Set the password for user `user` |
| `CREATE ROLE username WITH LOGIN PASSWORD 'quoted password';` | Create a user |
| `ALTER ROLE user CREATEDB;` | Add an attribute to a user |
| `GRANT ALL PRIVILEGES ON DATABASE database TO user;` | Allow user access to all privileges for a database |
| `ALTER DATABASE database_name RENAME TO new_database_name;` | Rename a database |
| `DROP DATABASE database;` | Delete database `database` |
| `select version();` | Show the version of PostgreSQL installed |

## psycopg2 usage example
```python
import psycopg2


# Connect to an existing database and open a cursor to perform database operations
conn = psycopg2.connect(dbname='test', user='postgres')
cur = conn.cursor()

# Execute commands
cur.execute("CREATE TABLE test (id serial PRIMARY KEY, num integer, data varchar);")
cur.execute("INSERT INTO test (num, data) VALUES (%s, %s)", (100, "abc'def"))

# Query the database
cur.execute("SELECT * FROM test;")
cur.fetchone() # Output is tuple: (1, 100, "abc'def")

# Make the changes to the database persistent
conn.commit()

# Close communication with the database
cur.close()
conn.close()
```

Note that the capitals used above are conventional and not required for the commands to work.
