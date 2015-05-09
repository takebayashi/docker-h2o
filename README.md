# H2O/Docker

## Usage

docker-compose exampe:

```
my_app:
  image: my_app_image
  environment:
    MY_APP_PORT: 8080
h2o:
  image: takebayashi/h2o
  links:
    - my_app
  environment:
    H2O_APP_NAME: my_app
    H2O_APP_PORT: 8080
    H2O_LISTEN_PORT: 80
```
