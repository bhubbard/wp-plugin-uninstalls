#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccfwp_settings'
wp option delete 'ccwp_last_altcron_update'
wp option delete 'ccfwp_current_post'
wp option delete 'ccfwp_scan_urls'
wp option delete 'ccfwp_current_term'
wp option delete 'wp_rocket_settings'

# Clear Cron Jobs
wp cron event delete 'ccfwp_generate_crtlcss'

