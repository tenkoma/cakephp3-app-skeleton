# CakePHP3 Docker development environment

# Install

```console
$ git clone https://github.com/tenkoma/cakephp3-app-skeleton.git cake3app
$ cd cake3app
$ rm -rf .git
$ docker-compose run composer create-project --prefer-dist --no-interaction cakephp/app app
$ find ./app -not -name 'app' -maxdepth 1 -exec mv {} . \; && rmdir app
$ docker-compose up -d
```

After that, access to http://localhost:8000 by the browser.