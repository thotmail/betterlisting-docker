# betterlisting-docker
An nginx server to serve as a nice looking directory listing

## Run:
### docker-compose:
Use the provided docker-compose.yml

Change `/path/to/files` to the location of served files, and `1234` to the desired exposed port.

### docker run:
`docker run -d -v /path/to/files:/files -e WEB_NAME=Nameofsite -e WEB_URL=http://URLofsite.com -p 1234:80 thotmail/betterlisting`

As with docker-compose, change `/path/to/files` and `1234` to desired values.

### Build Locally:
 ```bash
 git clone https://github.com/thotmail/betterlisting-docker.git`

 cd betterlisting-docker

 ./prebuild

 docker build -t <NAME OF IMAGE> .
```
If you\'re building locally, I assume you know what needs to be changed in either run option.

## Enviornment:

`WEB_NAME`: The name of your website.

`WEB_URL`: The url to said website, please include `http[s]://` or weird things happen.

Both can be left blank


## Note:

- The code fetched by setup is from [BetterListing](https://gitlab.com/devCoster/BetterListing).
- The [Faenza icons](http://tiheum.deviantart.com/art/Faenza-Icons-173323228) by [tiheum](http://tiheum.deviantart.com/) are also fetched and partially used.
- Released under GNU General Public License v3 (GPL-3), as are the two sources above.
