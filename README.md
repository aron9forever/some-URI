# Hi there.

Some choppy hacks have been used to enable CORS for Laravel, as well as to redirect Angular's requests to port 8000. Check Laravel app bootstrap and Angular environment.ts.

## Installation:

- git pull
- install Angular, Laravel, run the migrations. Name your database 'disko_partizani' for the .sql import to work.
- import the file containing the scaffold database, either with phpMyAdmin or by running the query manually.
- php artisan serve and ng serve in the laravel and angular folders respectively
- View should be accessible at localhost:4200 and communicate with API at localhost:8000

## Preview:

![Screenshot 1 of application](https://i.imgur.com/xxGuUhs.png)
![Screenshot 2 of application](https://i.imgur.com/0m6ntIl.png)
![Screenshot 3 of application](https://i.imgur.com/UqqNzQ0.png)
![Screenshot 4 of application](https://i.imgur.com/ILULXoE.png)
