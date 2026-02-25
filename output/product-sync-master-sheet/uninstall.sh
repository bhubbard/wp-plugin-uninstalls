#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pssg_saved_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_close_date'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_right_now' OR option_name LIKE '_site_transient_%_right_now'"

# Clear Cron Jobs
wp cron event delete 'order_event_trigger_hook'
wp cron event delete 'variations_event_trigger_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_type'"
