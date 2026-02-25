#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twitter_update_interval'
wp option delete 'twitter_users_per_update'
wp option delete 'twitter_ajax_refresh_interval'

