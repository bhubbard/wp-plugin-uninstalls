#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tweeter_username'
wp option delete 'tweeter_tweetCount'
wp option delete 'tweeter_delay'
wp option delete 'tweeter_replies'

