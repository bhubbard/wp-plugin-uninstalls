#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultimate_instagram_enable_accessibility'
wp option delete 'ultimate-instagram-skip-premium'
wp option delete 'ultimate_instagram_addons'
wp option delete 'ultimate-feed-wizard-set-up'
wp option delete 'ultimate_instagram_recent_log_file'
wp option delete 'ultimate_instagram_pagination_entries'
wp option delete 'ultimate_instagram_pagination_listings'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'ultimate_cron_hook'

