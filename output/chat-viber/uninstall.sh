#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vchat_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'csf_demo_mode'
wp option delete 'vchat-opt'

# Delete Transients
wp transient delete 'themeatelier_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
