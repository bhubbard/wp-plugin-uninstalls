#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtfeeds_consumer_screen_name'
wp option delete 'wtfeeds_consumer_key'
wp option delete 'wtfeeds_consumer_secret'
wp option delete 'wtfeeds_access_token'
wp option delete 'wtfeeds_access_token_secret'
wp option delete 'wtfeeds_display_number_of_tweets'
wp option delete 'wtfeeds_display_color'

