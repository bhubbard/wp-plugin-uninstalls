#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twitterKeywords_options'
wp option delete 'keywords'
wp option delete 'username'
wp option delete 'tweetN'
wp option delete 'widgetText'
wp option delete 'lang'

