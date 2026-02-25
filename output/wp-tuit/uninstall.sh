#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptuit_version'
wp option delete 'wptuit_cache'
wp option delete 'wptuit_username'
wp option delete 'wptuit_statuslink'
wp option delete 'wptuit_tweets'
wp option delete 'wptuit_widget'

