# betterlisting-docker
An nginx server to serve as a nice looking directory listing

## Install:
 ```bash
 git clone https://github.com/thotmail/betterlisting-docker.git`
 
 cd betterlisting-docker
 
 ./setup
```
### Run:
`docker-compose up -d`

The provided docker-compose is indended to be a template, `/path/to/files` must be changed to the location of served files.

`1234` can be changed to the desired exposed port


## Further config:
It is strongly recomended that `websiteName` and `websiteURL` are changed in the resulting file:

```javascript
FILE: betterlisting/top.html
		// Configure BetterListing here:
		var websiteName = 'ChangeMeInSettings';
		var websiteURL = 'https://www.changemeinsettinngs.com';
		var googleGACode = 'UA-XXXXXXXX-1';
		// End of normal settings.
```
If not using Google Analytics, remove `googleGACode` from above and the script block below:
```javascript
FILE: betterlisting/top.html
		<script>
		    // Remove if not using GA.
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
			ga('create', googleGACode, 'auto');
			ga('send', 'pageview');
		</script>

```

## Note:

- The code fetched by setup is from [BetterListing](https://gitlab.com/devCoster/BetterListing).
- The [Faenza icons](http://tiheum.deviantart.com/art/Faenza-Icons-173323228) by [tiheum](http://tiheum.deviantart.com/) are also fetched and partially used.
- Released under GNU General Public License v3 (GPL-3), as are the two sources above.
