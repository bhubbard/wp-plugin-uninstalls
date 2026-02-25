#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiwp_network_options'
wp option delete 'aiwp_options'
wp option delete 'aiwp_version'
wp option delete 'gadash_network_options'
wp option delete 'gadash_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_aiwp_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_aiwp_cache_timeout_%'"

# Clear Cron Jobs
wp cron event delete 'aiwp_expired_cache_hook'

