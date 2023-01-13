
## Dev:

```
docker build dev 
docker run --security-opt seccomp=config/chrome.json dev lighthouse https://www.google.com/ --output json > output.json
```

## Run:

```
wget https://raw.githubusercontent.com/irishdistillers/fresnel/main/config/chrome.json
docker run --security-opt seccomp=chrome.json ghcr.io/irishdistillers/fresnel lighthouse https://www.jamesonwhiskey.com/ --output json > jamesonwhiskey.json
```