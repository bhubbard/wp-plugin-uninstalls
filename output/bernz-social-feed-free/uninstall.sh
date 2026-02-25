#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bernz_social_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bernz_social_data_%' OR option_name LIKE '_site_transient_bernz_social_data_%'"

# Clear Cron Jobs
wp cron event delete 'bernz_social_refresh_cache'

