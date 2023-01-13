docker run --security-opt seccomp=config/chrome.json dev lighthouse https://www.google.com/ --output json > output.json
