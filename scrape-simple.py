import tweepy
import codecs
import keys

# Get the authentication keys from my_keys.py
CONSUMER_KEY = keys.CONSUMER_KEY
CONSUMER_SECRET = keys.CONSUMER_SECRET
ACCESS_KEY = keys.ACCESS_KEY
ACCESS_SECRET = keys.ACCESS_SECRET

# Authenticate to Twitter with our keys
auth1 = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
auth1.set_access_token(ACCESS_KEY, ACCESS_SECRET)
api = tweepy.API(auth1)

# Create a Python class that tells Tweepy what to do when a new status is detected
class MyStreamListener(tweepy.StreamListener):
    def on_status(self, status):
        print(status.text)
    def on_error(self, status_code):
        if status_code == 420:
            return False

# create an instace of the StreamListener object
myStreamListener = MyStreamListener()

# Connect to the streaming API and print tweets matching our keywords
myStream = tweepy.Stream(auth = api.auth, listener=myStreamListener)
print(myStream.filter(track=['#itpcore2','#itp','@cunyitp']))
