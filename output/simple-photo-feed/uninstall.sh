#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spf_main_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_spf_get_media_%' OR option_name LIKE '_site_transient_spf_get_media_%'"

# Clear Cron Jobs
wp cron event delete 'simple_photo_refresh_token'
wp cron event delete 'simple_photo_update_feed'

