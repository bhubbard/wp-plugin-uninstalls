#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tridebugging'
wp option delete 'slideshow_smart_rating_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%update_info' OR option_name LIKE '_site_transient_%update_info'"
wp transient delete 'slideshow_update_info'

# Clear Cron Jobs
wp cron event delete 'slideshow_ratereviewhook'

