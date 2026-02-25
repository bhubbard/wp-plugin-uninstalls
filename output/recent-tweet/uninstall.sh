#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loklak-settings'
wp option delete 'loklak_init'
wp option delete 'loklak-settings[loklak_api]'
wp option delete 'fa_twitter_plugin_last_cache_time'
wp option delete 'fa_twitter_plugin_tweets'

