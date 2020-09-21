CODE=$1
curl -XPOST -D - \
	-u whoami:whoami \
	-H 'Content-Type: application/x-www-form-urlencoded' \
	-d "grant_type=authorization_code&code=$CODE&redirect_uri=https%3A%2F%2Foidcdebugger.com%2Fdebug" \
	http://sso.maduma.org/openam/oauth2/access_token
