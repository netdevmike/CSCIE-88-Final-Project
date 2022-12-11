https://realpython.com/twitter-sentiment-python-docker-elasticsearch-kibana/

https://www.linkedin.com/pulse/stream-twitter-data-elasticsearch-dashboard-kibana-python-tripathi/

APIKey - hJfxA7HnH7gKmAU8PgTaNXVs0
APIKeySecret - 5Dlknas0cmV3tYMD3aUNLN6txhOEqkgVg9BV2jZLwEwa00AX1r
BearerToken - AAAAAAAAAAAAAAAAAAAAAB3HkAEAAAAAlBXQQe7cvlxtHJx35nNThUq0Q8c%3Dy1q8Y6wCCCevSIUbPipASmsORu9OpDeBYZqX8hfirSsOwNv3sU
AccessToken - 1270459065588727812-YDpkgCYTTM6CYLlv13lLXgAHoKm0RU
AccessTokenSecret - 7jWlCYm7XOAtZri55o9Gb95bktdmkJnXQoLQSiPJm1E49

docker-compose -f twitterDocker.yaml up -d --scale kafka=3


bin/elasticsearch-create-enrollment-token --scope kibana

python get_tweet_sentiment.py -s AMZN -k 'AWS Marketplace','GCP MarketplaceB', 'Azure Marketplace' -l --quiet


CLOUD_ID = "Cloud-Marketplace-Twitter-Data:dXMtZWFzdC0yLmF3cy5lbGFzdGljLWNsb3VkLmNvbTo0NDMkZWE1MjRkMGM1YTQwNDA3Y2E2MmY5NTAyMjI4ZDg5MjQkYTBhMjhhODI4M2JmNGQyYzg0N2JkZGZmNjcxYTkyNGY="

POST /_security/api_key
{
  "name": "python_example",
  "role_descriptors": {
    "python_read_write": {
      "cluster": ["monitor"],
      "index": [
        {
          "names": ["test-index"],
          "privileges": ["create_index", "write", "read", "manage"]
        }
      ]
    }
  }
}

{
  "encoded": "RFRPdS1vUUJUU2lMWEp3SU0yQkM6cmtfRXVpYjlRSE9nUUtTLTRFbEtpQQ==",
  "api_key": "rk_Euib9QHOgQKS-4ElKiA",
  "id": "DTOu-oQBTSiLXJwIM2BC",
  "name": "python_example"
}