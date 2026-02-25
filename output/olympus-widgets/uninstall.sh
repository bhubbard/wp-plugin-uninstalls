#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'author_widget_disable'
wp option delete 'olympus_twitter_consumer_key'
wp option delete 'olympus_twitter_consumer_secret'
wp option delete 'olympus_twitter_access_token'
wp option delete 'olympus_twitter_access_token_secret'
wp option delete 'olympus_twitter_plugin_last_cache_time'
wp option delete 'olympus_twitter_plugin_tweets'

