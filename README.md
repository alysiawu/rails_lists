## A rails lists management and colab system

#### functionalities
* Run `rails s` to start the server, and use curl or postman to test api end points


* Ruby version
ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-darwin19]
* System dependencies

* Configuration
config/routes
config/database.yml

* Database creation && initialization
mySQL2

Use XAMP apache sql server
phpMyAdmin Web UI (or Sequel Pro etc) for database creation

`rails g model List title:string` etc for active record db orm creation
`rails db:migrate` for creating updated db schema
`rails db:seed`  to create sample data


* Routes:
   
Use postman to try the following endpoints
#### Resources: Lists
GET
http://localhost:3000/api/v1/lists

GET
http://localhost:3000/api/v1/lists/<id>

POST 
http://localhost:3000/api/v1/lists/<id>
payload: 
```
{
    title: 'list title'
}
```
PUT

http://localhost:3000/api/v1/notes/1

payload: 
```
{
status: 1,
content: 'updated content'
}
```
DELETE
http://localhost:3000/api/v1/lists/1

#### Resources: Notes
GET
http://localhost:3000/api/v1/notes

DELETE http://localhost:3000/api/v1/notes/1



http://localhost:3000/api/v1/users




* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


