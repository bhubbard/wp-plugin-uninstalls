#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rfse_activation_date'
wp option delete 'rfse_no_bug'

# Clear Cron Jobs
wp cron event delete 'rfse_my_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rf_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rf_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rf_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rf_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rf_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rf_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rf_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rf_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rf_pinterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rf_pinterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rf_pinterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rf_pinterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rf_linkdin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rf_linkdin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rf_linkdin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rf_linkdin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rf_social_last_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rf_social_last_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rf_social_last_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rf_social_last_modified'"
