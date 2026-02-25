#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mythic-wp-key'
wp option delete 'mythic-wp-last_query'
wp option delete 'mythic-wp-last_cron'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'mythic_wp_last_cron_check'

