BASE_URL='http://localhost:5000/api/timeline_post'


CONTENT_TYPE="Content-Type: application/json"

NAME="heloooooo"
EMAIL="workgin@working.com"
CONTENT="lets gooo"

POST_DATA="name="$NAME"&email="$EMAIL"&content="$CONTENT""

POST_RESPONSE=$(curl -X POST "$BASE_URL" -d "$POST_DATA")

sleep 2

POST_ID=$(echo $POST_RESPONSE | jq -r '.id')

RESPONSE=$(curl -X GET "$BASE_URL")
echo "$RESPONSE"

DELETE_REPONSE=$(curl -X DELETE "$BASE_URL/$POST_ID")