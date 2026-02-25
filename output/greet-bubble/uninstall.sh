#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'greet_bubble_version'
wp option delete 'greet_bubble_first_version'
wp option delete 'greet_bubble_activation_date'
wp option delete 'greet_bubble_db_version'
wp option delete 'greet_bubble_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete '_greet'

# Delete Transients
wp transient delete 'themeatelier_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_greet_bubble_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_greet_bubble_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_greet_bubble_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_greet_bubble_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_greet_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_greet_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_greet_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_greet_meta'"
