import tweepy
import config
import pandas as pd
from elasticsearch import Elasticsearch

# index = "Cloud_Marketplace_Data"
es = Elasticsearch(
    cloud_id=config.CLOUD_ID,
    api_key=(config.APIKEY_ID, config.APIKEY_KEY),
)

client = tweepy.Client(bearer_token=config.BEARER_TOKEN)

AWS = "AWS Marketplace -is:retweet"
GCP = "GCP Marketplace -is:retweet"
Azure = "Azure Marketplace -is:retweet"

columns = ['User', 'Tweet', 'Cloud']
data = []

for tweet in tweepy.Paginator(client.search_recent_tweets, query=AWS, max_results=100).flatten(limit=1000):
    data.append([tweet.id, tweet.text, 'AWS'])

for tweet in tweepy.Paginator(client.search_recent_tweets, query=GCP, max_results=100).flatten(limit=1000):
    data.append([tweet.id, tweet.text, 'GCP'])

for tweet in tweepy.Paginator(client.search_recent_tweets, query=Azure, max_results=100).flatten(limit=1000):
    data.append([tweet.id, tweet.text, 'Azure'])

df = pd.DataFrame(data, columns=columns)

print(df)

df.to_csv('tweets.csv')
