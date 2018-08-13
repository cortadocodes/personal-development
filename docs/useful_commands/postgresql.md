# Useful postgreSQL commands

| Command | Description | Reference |
| :------ | :---------- | :-------- |
| `pg_ctl -D /usr/local/var/postgres start` | Start posgreSQL server |  | 
| `psql postgres` | Start the `psql` utility with user `postgres` |  |
| `\du` | Get list of roles/users and attributes |  |
| `CREATE ROLE username WITH LOGIN PASSWORD 'quoted password';` or `createuser username` | Create a user |  |
| `\password username` | Set the password for user `username` |  |
| `ALTER ROLE username CREATEDB;` | Add an attribute to a user |  |
| `\q` | Quit the `psql` prompt |  |
