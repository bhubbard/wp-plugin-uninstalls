#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seiwp_got_updated'
wp option delete 'seiwp_redeemed_code'
wp option delete 'seiwp_network_options'
wp option delete 'seiwp_options'
wp option delete 'seiwp_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_seiwp_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_seiwp_cache_timeout_%'"

# Clear Cron Jobs
wp cron event delete 'seiwp_expired_cache_hook'

