#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmac_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tlc_up__%' OR option_name LIKE '_site_transient_tlc_up__%'"

# Clear Cron Jobs
wp cron event delete 'tmac_hourly_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmac_last_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmac_last_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmac_last_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmac_last_id'"
