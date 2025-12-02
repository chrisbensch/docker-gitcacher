# Remove any existing git proxy setting
git config --global --unset http.proxy

# Redirect GitHub URLs through your cache
git config --global url."http://your-proxy-server:8080/".insteadOf "https://github.com/"