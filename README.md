# docker-opencart
OpenCart running on docker containers for local development.

## Usage
This project is intended to be used as a local development environment for OpenCart 3 using docker containers.

Folders:
* `images`: docker images for nginx and php7.1
* `compose`: setup with docker compose

## Pre-requisites
* Docker running on a computer

## Setup a new OpenCart 3 project
1. Create a folder for the project and use the docker compose configuration from this project
```
mkdir opencart3.test && cd $_
git init
git remote add origin git@github.com:siven76/docker-opencart.git
git fetch origin
git checkout origin/master -- compose
mv compose/* .
rm -rf compose .git
```

2. Download the OpenCart 3 source code to the `src` folder with `bin/download 3.0.2.0`

3. An an entry to `/etc/hosts` with your custom domain: `10.254.254.254 opencart3.test` (assuming your custom domain is `opencart3.test`). Use a `.test` tld, as `.localhost` and `.dev` will present issues with domain resolution by your browser.

4. Start you docker containers with: `bin/start`.

5. Go to `http://opencart3.test` in your browser, to start OpenCart 3 installation wizard.
