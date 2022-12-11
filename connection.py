import tweepy
from elasticsearch import Elasticsearch

import config

index = "cloud_marketplace_data_20221210"

es_client = Elasticsearch(
    cloud_id=config.CLOUD_ID,
    api_key=(config.APIKEY_ID, config.APIKEY_KEY)
)

client = tweepy.Client(bearer_token=config.BEARER_TOKEN)

print(es_client.info())
