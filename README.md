# pythonm-crud-rest-api

### Prerequisites
Make sure you have the python 3 installed using this command:
#### python 3
```bash script
python3 --version
```

#### Poetry
Make sure you have poetry installed using this command:
```bash script
poetry --version
```

#### Docker
Make sure you have docker installed using this command:
```bash script
docker --version
```

#### Curl
Make sure you have curl installed using this command:
```bash script
curl --version
```

### Build code
Build the code without running it
```bash script
poetry install
```

### Run code
Build the code and run all the tests
```bash script
poetry run pythoncrudrestapi
```

#### Running the application locally

#####  Create docker image of app
Creating a docker image should be as simple as
``` bash
docker build -t pythonapp .
```

##### 🐘 Run the Postgres container
```bash script
docker-compose up -d db
```

##### 🏗️ Build the python app image
```bash script
docker compose build
```

##### 👟 Run the Python Container
```bash script
docker compose up pythonapp
```

##### 🧪 Test the applications endpoints

Request to get the all the users:
```bash script
curl --location --request GET 'http://localhost:8080/users'
```
Example of a response:
`[ 
    {
    "id": 1,
    "name": "aaa",
    "email": "aaa@mail"
    },
    {
    "id": 2,
    "name": "bbb",
    "email": "bbb@mail"
    }
]`

Request to create a new user
```bash script
curl --location --request POST 'http://localhost:8080/users' \
--header 'Content-Type: application/json' \
--data-raw '{"name": "aaa","email": "aaa@mail"}'
```

Request to get one specific user:
```bash script
curl --location --request GET 'http://localhost:8080/users/2'
```
Example of a response:
`{
"name": "new",
"email": "new@mail"
}`

Request to update a user
```bash script
curl --location --request PUT 'http://localhost:8080/users/2' \
--header 'Content-Type: application/json' \
--data-raw '{"name": "new","email": "new@mail"}'
```

Request to delete a user
```bash script
curl --location --request DELETE 'http://localhost:8080/users/3'
```

## Contact
This project is maintained by [MikAoJk](CODEOWNERS)