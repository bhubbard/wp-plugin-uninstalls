#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_visearch_tweets_widget'
wp option delete 'visearch_tweets'
wp option delete 'visearch_tweets_cache'
wp option delete 'visearch_tweets_hashtag'
wp option delete 'visearch_tweets_username'
wp option delete 'visearch_tweets_select_option'
wp option delete 'visearch_tweets_details'

