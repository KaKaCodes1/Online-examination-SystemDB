[![](https://mermaid.ink/img/pako:eNp9kUFqwzAQRa8iZp1cwLtQaxFIncayaSmGMrWntmgsBVlKKXbuXimREyhptfsz72vmSyPUuiFIgEwqsTXYV4r5s-EPRZnznE3TcjmNjL-sHlnCakNoabgw51rs70ouivU2C4xWFqWK0LURwe1TUMJzHUZEFGXKs2Imci7KTREIQzXJ471xN6YlRea206-7BA9BePq2ysQzz4NhcO-9tH9sd4evANXwRYYaJlUFF9-c4j_bQHuqrbf5nGcbLKAn06Ns_HuPoVKB7ainCgLfoPkM4Mlz6KwW36qGxBpHCzDatR0kH7gfvHKHxieO_3WtHlC9aj3r0w9IxJPw?type=png)](https://mermaid.live/edit#pako:eNp9kUFqwzAQRa8iZp1cwLtQaxFIncayaSmGMrWntmgsBVlKKXbuXimREyhptfsz72vmSyPUuiFIgEwqsTXYV4r5s-EPRZnznE3TcjmNjL-sHlnCakNoabgw51rs70ouivU2C4xWFqWK0LURwe1TUMJzHUZEFGXKs2Imci7KTREIQzXJ471xN6YlRea206-7BA9BePq2ysQzz4NhcO-9tH9sd4evANXwRYYaJlUFF9-c4j_bQHuqrbf5nGcbLKAn06Ns_HuPoVKB7ainCgLfoPkM4Mlz6KwW36qGxBpHCzDatR0kH7gfvHKHxieO_3WtHlC9aj3r0w9IxJPw)



# ONLINE EXAMINATION System DB
> This Repository Entails, the System Design of the Online-examination System. This include's the various SQL files, such as the ER diagram, table structure and SQL Schema.

## Prerequisites
 To run the following project, you will need the following
 * A code Editor- Visual Studio is preffered
 * SQL(Either PgAdmin(Postgres) or MYSQL(mysql) workbench is installed to test the commnds from creation to deletion)
 * Go to Extensions on Visual Studio, download the extension with the Name -SQLTOOLS

### Getting Started
Clone the Repository by copying the URL: It should look something like this 
```
https://github.com/KaKaCodes1/Online-examination-SystemDB.git
```
Paste that URL in visual studio code, specifically click on the part where the instructions tell you 
> Clone Git Repository
### Setting up a connection
After installing the extension, you need to set up a connection to your database. 
This usually involves providing the database type, server name, database name, user name, and password.

### Run SQL Commands
* Open a new SQL file or use an existing one.
* Write your SQL commands in the file.
* Use the command palette (Cmd+Shift+P) and search for the command to run the SQL query (e.g., "SQLTools: Execute Query" or "MS SQL: Execute Query").

### View Results
The results of your query will typically be displayed in an output pane or a dedicated results window within VS Code.

### Trigger Functions 
* Automatically set pass/fail status for exams
* Prevent creating exams with past dates
* Automatically mark multiple-choice answers
* Update student's exam score as they submit answers
